package com.challenge.prepaid.controller.impl;

import com.challenge.prepaid.controller.PurchasePrepaidDataApi;
import com.challenge.prepaid.dto.PurchasePrepaidData;
import com.challenge.prepaid.dto.VoucherCodeData;
import com.challenge.prepaid.dto.VoucherCodeDataResponseObject;
import com.challenge.prepaid.service.PurchasePrepaidDataServiceAdapter;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.Instant;

@RestController
@Slf4j
public class PurchasePrepaidDataController implements PurchasePrepaidDataApi {

    @Autowired
    private Environment env;

    @Autowired
    private PurchasePrepaidDataServiceAdapter purchasePrepaidDataServiceAdapter;


    @Override
    public ResponseEntity<VoucherCodeDataResponseObject> buyDataVoucher(String dataPlanId, String mobilePhoneNumber) {

        Instant start = Instant.now();

        log.trace(String.format("Buy Data Voucher called with arguments: [%s, %s]", dataPlanId, mobilePhoneNumber));

        ResponseEntity<VoucherCodeDataResponseObject> responseEntity = purchasePrepaidDataServiceAdapter.buyDataVoucher(dataPlanId, mobilePhoneNumber);

        log.debug(String.format("Time spent inside buyDataVoucher: %s", Duration.between(start, Instant.now())));

        return responseEntity;
    }

    @Override
    public String description() {

        return "Purchase-prepaid-data Portal Services running at port: " + env.getProperty("local.server.port");
    }


    /**
     * Inject the RestTemplateBuilder as an argument in
     *
     * @param builder
     * @return
     * @Bean method to create a RestTemplate:
     */
//	@Bean
//	public RestTemplate restTemplate(RestTemplateBuilder builder) {
//
//		return builder.build();
//	}


}