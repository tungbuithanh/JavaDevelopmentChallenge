package com.challenge.prepaid.controller;

import com.challenge.prepaid.dto.VoucherCodeDataResponseObject;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(PurchasePrepaidDataApi.REQUEST_MAPPING)
public interface PurchasePrepaidDataApi {
    String REQUEST_MAPPING = "/api";

    @ApiOperation(value = "The aim of this service is to create voucher code.")
    @RequestMapping("/voucherCode")
    ResponseEntity<VoucherCodeDataResponseObject> buyDataVoucher(String dataPlanId, String mobilePhoneNumber);

    /**
     * Description of the endpoint to allow for simple testing while no methods exist
     *
     * @return the description of the endpoint
     */
    @RequestMapping(value = "/description", method = RequestMethod.GET)
    String description();
}