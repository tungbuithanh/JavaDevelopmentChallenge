package com.challenge.parties.api.controller;

import com.challenge.parties.api.entity.VoucherCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/")
public class VoucherCodeGeneratorController {
	@Autowired
	private Environment env;
		
	@RequestMapping("/voucherCodesGenerator")
	public List<VoucherCode> getVoucherCodes() {
		List<VoucherCode> voucherCodes = Arrays.asList(
			new VoucherCode(1, "1241224532AABBCCDDEEFF9"),
			new VoucherCode(2, "84542723236AAAAABBBBCCC"),
			new VoucherCode(3, "84542723236FFFEEEEEAAAA"),
			new VoucherCode(4, "84532323236ABCACBEFDDDD"),
			new VoucherCode(5, "843433523236EEEDDDDDFFF"),
			new VoucherCode(6, "84542723236969675353532"),
			new VoucherCode(7, "84542723236546547787985"),
			new VoucherCode(9, "845427232361132443546AA"),
			new VoucherCode(9, "4562535AAAACCCCCCCCCDDD"));
		return voucherCodes;
	}
}
