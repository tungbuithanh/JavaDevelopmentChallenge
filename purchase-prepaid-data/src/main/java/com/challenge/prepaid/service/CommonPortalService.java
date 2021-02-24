package com.challenge.prepaid.service;

import com.challenge.prepaid.domain.DataPlan;
import com.challenge.prepaid.domain.OrderDetail;
import com.challenge.prepaid.domain.Status;
import com.challenge.prepaid.domain.VoucherCode;
import com.challenge.prepaid.validator.PortalServiceBusinessExceptionValidator;
import com.challenge.prepaid.validator.PurchasePrepaidErrorMessageEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.lang3.math.NumberUtils;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Random;
import java.util.regex.Pattern;

/**
 *
 * @author tungbt
 */
public abstract class CommonPortalService {

    @Autowired
    protected PortalServiceBusinessExceptionValidator validator;

    /**
     * Verify input attributes be not null
     */
    protected void verifyMandatoryInput(String dataPlanId, String mobilePhoneNumber) {
        validator.throwIfStringIsBlank(dataPlanId, PurchasePrepaidErrorMessageEnum.MISSING_MANDATORY_ATTRIBUTE_IN_REQUEST_BODY);
        validator.throwIfStringIsBlank(mobilePhoneNumber, PurchasePrepaidErrorMessageEnum.MISSING_MANDATORY_ATTRIBUTE_IN_REQUEST_BODY);
    }

    protected void validationFormatdataPlanId(String dataPlanId) {

        validator.throwIfFalse(NumberUtils.isDigits(dataPlanId), PurchasePrepaidErrorMessageEnum.FIELD_DATA_PLAN_ID_NUMBER_FORMAT_WRONG);

    }

    /**
     * Verify international phone number format
     */
    protected void verifyPhoneNumber(String mobilePhoneNumber) {

        validator.throwIfFalse(mobilePhoneNumber == null || validatePhone(mobilePhoneNumber), PurchasePrepaidErrorMessageEnum.INVALID_PHONE);
    }

    /**
     * This method is used to validate international phone numbers based on the E.164 format
     * For example about valid phone numbers format +46766861004, +17162741616 and +85294504964, (216) 208-0460
     *
     * @Return true if phone number is valid E.164 format
     */
    private boolean validatePhone(String phoneNumber) {
        StringBuilder sb = new StringBuilder(200);

        // Country code
        sb.append("^(\\+{1}[\\d]{1,3})?");

        // Area code, with or without parentheses
        sb.append("([\\s])?(([\\(]{1}[\\d]{2,3}[\\)]{1}[\\s]?)|([\\d]{2,3}[\\s]?))?");

        // Phone number separator can be "-", "." or " "

        // Minimum of 5 digits (for fixed line phones in Solomon Islands)
        sb.append("\\d[\\-\\.\\s]?\\d[\\-\\.\\s]?\\d[\\-\\.\\s]?\\d[\\-\\.\\s]?\\d[\\-\\.\\s]?");

        // 4 more optional digits
        sb.append("\\d?[\\-\\.\\s]?\\d?[\\-\\.\\s]?\\d?[\\-\\.\\s]?\\d?$");

        return Pattern.compile(sb.toString()).matcher(phoneNumber).find();
    }

    protected int getRandomNumber(int min, int max) {
        Random random = new Random();
        return random.nextInt(max - min) + min;
    }

    protected OrderDetail createOrderDetail(DataPlan dataPlan, String mobilePhoneNumber) {
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setDataPlan(dataPlan);
        orderDetail.setOrderDate(LocalDate.now());
        orderDetail.setQuantity(1);
        orderDetail.setTelephoneNumber(mobilePhoneNumber);
        orderDetail.setTotal(dataPlan.getPrice());
        orderDetail.setTransactionCost(new BigDecimal("0"));

        return orderDetail;
    }

    protected VoucherCode createVoucherCode(OrderDetail orderDetail, String code) {
        VoucherCode voucherCode = new VoucherCode();
        voucherCode.setIssueDate(LocalDate.now());
        voucherCode.setOrderDetail(orderDetail);
        voucherCode.setStatus(Status.SUCCESS);
        voucherCode.setVoucherCode(code);
        return voucherCode;
    }

}
