package com.challenge.prepaid.controller;

import com.challenge.prepaid.dto.PurchasePrepaidData;
import com.challenge.prepaid.dto.VoucherCodeData;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping(PurchasePrepaidDataApi.REQUEST_MAPPING)
public interface PurchasePrepaidDataApi {
	String REQUEST_MAPPING = "/api";

	@ApiOperation(value = "The aim of this service is to create voucher code.")
	@PostMapping(value = "/voucherCode")
	VoucherCodeData generateVoucherCode(@RequestBody PurchasePrepaidData requestBody);
}