package com.challenge.parties.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient 	
public class VoucherCodeGeneratorApp {

	public static void main(String[] args) {
		SpringApplication.run(VoucherCodeGeneratorApp.class, args);
	}
}
