package com.challenge.parties.api.controller;

import com.challenge.parties.api.entity.VoucherCodeGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * The class plays as a mock service of 3rd party to return the voucher code.
 * It should simulate both happy case and unhappy case
 *
 * @author ttb
 */
@RestController
@RequestMapping("/")
public class VoucherCodeGeneratorController {

    @Autowired
    private Environment env;

    private List<VoucherCodeGenerator> voucherCodes = null;

    public VoucherCodeGeneratorController() {

        voucherCodes = Arrays.asList(
                new VoucherCodeGenerator(0, "1241224532AABBCCD"),
                new VoucherCodeGenerator(1, "84542723236AAAAAB"),
                new VoucherCodeGenerator(2, "84542723236FFFEEE"),
                new VoucherCodeGenerator(3, "84532323236ABCACF"),
                new VoucherCodeGenerator(4, "843433523236EEEDD"),
                new VoucherCodeGenerator(5, "845427232369696AA"),
                new VoucherCodeGenerator(6, "845427232365465DD"),
                new VoucherCodeGenerator(7, "845427232361132EE"),
                new VoucherCodeGenerator(8, "845427232361132FF"),
                new VoucherCodeGenerator(9, "845427232361132BB"),
                new VoucherCodeGenerator(10, "4562535AAAACCABC"));
    }

    /**
     * Get list of voucher codes from API 3rd party.
     */
    @RequestMapping("/voucherCodesGenerator")
    public List<VoucherCodeGenerator> getVoucherCodes() {
        return voucherCodes;
    }

    /**
     * The 3rd parties provide an API for the client to call via HTTP(s)
     * protocol to get the voucher code by Id.
     */
    @RequestMapping("/voucherCodeGenerator")
    public VoucherCodeGenerator getVoucherCode(int id) {

        VoucherCodeGenerator retVoucherCode = null;

        if (id >= 0 && id <= 10) {
            retVoucherCode = voucherCodes.get(id);
        }

        return retVoucherCode;
    }
}
