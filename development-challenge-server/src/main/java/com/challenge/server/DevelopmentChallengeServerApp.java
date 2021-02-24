package com.challenge.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class DevelopmentChallengeServerApp {

    public static void main(String[] args) {
        SpringApplication.run(DevelopmentChallengeServerApp.class, args);
    }
}
