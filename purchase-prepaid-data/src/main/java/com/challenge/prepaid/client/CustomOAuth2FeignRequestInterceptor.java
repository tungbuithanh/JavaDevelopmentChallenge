package com.challenge.prepaid.client;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.security.oauth2.client.feign.OAuth2FeignRequestInterceptor;
import org.springframework.security.oauth2.client.OAuth2ClientContext;
import org.springframework.security.oauth2.client.resource.OAuth2AccessDeniedException;
import org.springframework.security.oauth2.client.resource.OAuth2ProtectedResourceDetails;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.exceptions.InvalidGrantException;

/**
 * Custom request interceptor to handle the case when the refresh token is expired (in addition to access token)
 * Inspired from https://github.com/OpenFeign/feign/issues/1100
 *
 */
@Slf4j
public class CustomOAuth2FeignRequestInterceptor extends OAuth2FeignRequestInterceptor {
    private OAuth2ClientContext clientContext;

    @Value("${3rd-parties-api.security.remaintime2renewtoken}")
    private String limitTimeToRenewToken;

    CustomOAuth2FeignRequestInterceptor(OAuth2ClientContext oAuth2ClientContext, OAuth2ProtectedResourceDetails resource) {
        super(oAuth2ClientContext, resource);
        clientContext = oAuth2ClientContext;
    }

    @Override
    public OAuth2AccessToken getToken() {
        try {
            OAuth2AccessToken token = super.getToken();
            //in case the life time of token so short that we will renew another one to avoid problem when call the B2B portal
            if (token.getExpiresIn() < Integer.parseInt(limitTimeToRenewToken)) {
                token = acquireAccessToken();
            }
            
            return token;
            
        } catch (OAuth2AccessDeniedException e) {
            if (e.getCause() instanceof InvalidGrantException && e.getCause().getMessage().toLowerCase().contains("expired")) {
                log.warn("Caught exception due to token expiration: ", e);
                clientContext.setAccessToken(null);
                return acquireAccessToken();
            }
            throw e;
        }
    }
}