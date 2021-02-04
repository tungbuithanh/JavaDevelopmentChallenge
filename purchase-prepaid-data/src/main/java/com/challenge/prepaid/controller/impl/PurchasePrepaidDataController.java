package com.challenge.prepaid.controller.impl;

import com.challenge.prepaid.controller.PurchasePrepaidDataApi;
import com.challenge.prepaid.dto.PurchasePrepaidData;
import com.challenge.prepaid.dto.VoucherCodeData;
import com.challenge.prepaid.service.PurchasePrepaidDataService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@RestController
@Profile("purchase-prepaid-data")
public class PurchasePrepaidDataController implements PurchasePrepaidDataApi {
	private static final Logger LOGGER = LoggerFactory.getLogger(PurchasePrepaidDataController.class);

	@Autowired
	private RestTemplate restTemplate;

	@Autowired
	private PurchasePrepaidDataService purchasePrepaidDataService;


	@Override
	public VoucherCodeData generateVoucherCode(PurchasePrepaidData requestBody) {

		//TODO invoke purchasePrepaidDataService.buyDataVoucher to store requestBody to related tables

		// get list of available voucher code
		List<Object> voucherCode = restTemplate.getForObject("http://3rd-parties-api/voucherCodesGenerator/", List.class);

		//Assumption the service return a voucher code then we set voucher code for voucherCodeData object

		VoucherCodeData voucherCodeData = new VoucherCodeData();

		return voucherCodeData;
	}

}