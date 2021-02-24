package com.challenge.prepaid.conf;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author tungbt
 */
@Configuration
@ConfigurationProperties
@ComponentScan(basePackages = {"com.challenge.prepaid.client"})
public class PurchasePrepaidDataAppConf {

}
