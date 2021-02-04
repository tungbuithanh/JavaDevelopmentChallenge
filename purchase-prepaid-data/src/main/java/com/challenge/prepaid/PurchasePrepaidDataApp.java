package com.challenge.prepaid;

import com.challenge.prepaid.conf.PurchasePrepaidDataAppConf;
import com.challenge.prepaid.conf.PurchasePrepaidDataDBAppConf;
import org.springframework.context.annotation.Import;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *
 * @author tungbt
 */
@SpringBootApplication
@Import({PurchasePrepaidDataDBAppConf.class, PurchasePrepaidDataAppConf.class})
public class PurchasePrepaidDataApp {

    private static final Logger LOGGER = LoggerFactory.getLogger(PurchasePrepaidDataApp.class);

    public static void main(String[] args) {

        SpringApplication.run(PurchasePrepaidDataApp.class, args);
    }

}
