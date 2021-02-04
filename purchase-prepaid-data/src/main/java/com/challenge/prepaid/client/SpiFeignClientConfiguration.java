package com.challenge.prepaid.client;

import feign.RequestInterceptor;
import feign.auth.BasicAuthRequestInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;

/**
 *
 * @author tungbt
 */
public class SpiFeignClientConfiguration {

    @Value("${3rd-parties-api.security.username}")
    private String userName;

    @Value("${3rd-parties-api.security.password}")
    private String passWord;

    @Bean
    RequestInterceptor globalRequestInterceptor() {
        return template -> {
            BasicAuthRequestInterceptor basicAuthRequestInterceptor = new BasicAuthRequestInterceptor(userName, passWord);
            basicAuthRequestInterceptor.apply(template);

        };
    }
}
