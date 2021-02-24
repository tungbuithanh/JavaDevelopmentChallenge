package com.challenge.prepaid;

import com.challenge.prepaid.conf.PurchasePrepaidDataDBAppConf;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.client.RestTemplate;

/**
 * @author tungbt
 */
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
@EnableEurekaClient
@Import({PurchasePrepaidDataDBAppConf.class})
public class PurchasePrepaidDataApp {

    public static void main(String[] args) {

        SpringApplication.run(PurchasePrepaidDataApp.class, args);
    }

}

/**
 * Inject the RestTemplate as an argument in
 *
 * @Bean method to create a RestTemplate:
 */
@Configuration
class RestTemplateConfig {

    //Create a bean for restTemplate to call services 3rd-parties-api
    @Bean
    @LoadBalanced        //in case We scale multiple services and each service run on different ports.
    public RestTemplate restTemplate() {

        return new RestTemplate();
    }
}
