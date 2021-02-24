package com.challenge.prepaid.client;

import feign.RequestInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.security.oauth2.client.DefaultOAuth2ClientContext;
import org.springframework.security.oauth2.client.token.grant.password.ResourceOwnerPasswordResourceDetails;

import java.util.Arrays;


/**
 * @author tungbt
 */
public class ApiFeignClientConfiguration {

    @Value("${3rd-parties-api.restserver.url.api}")
    private String coreUrl;

    @Value("${3rd-parties-api.restserver.url.spi}")
    private String firstUrl;

    @Value("${3rd-parties-api.security.username}")
    private String idpUserName;

    @Value("${3rd-parties-api.security.password}")
    private String idpPassWord;

    @Value("${c3rd-parties-api.security.realmUri}")
    private String idpRealmUri;

    @Value("${header.vertical.first-spi}")
    private String firstSpiVerticalHeader;

    @Value("${header.vertical.core-api}")
    private String coreApiVerticalHeader;


    @Bean
    public RequestInterceptor idpOauth2FeignRequestInterceptor() {
        ResourceOwnerPasswordResourceDetails details = new ResourceOwnerPasswordResourceDetails();
        details.setUsername(idpUserName);
        details.setPassword(idpPassWord);
        details.setClientId("AAAA");
        details.setAccessTokenUri(idpRealmUri);
        details.setScope(Arrays.asList("openid"));
        return new CustomOAuth2FeignRequestInterceptor(new DefaultOAuth2ClientContext(), details);
    }

}
