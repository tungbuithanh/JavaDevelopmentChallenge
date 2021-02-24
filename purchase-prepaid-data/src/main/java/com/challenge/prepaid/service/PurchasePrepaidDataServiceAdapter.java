package com.challenge.prepaid.service;

import com.challenge.prepaid.dto.VoucherCodeDataResponseObject;
import org.springframework.http.ResponseEntity;

/**
 *
 * @author tungbt
 */
public interface PurchasePrepaidDataServiceAdapter {

    /**
     * This adapter will call buyDataVoucher, this method is used to wrapper respone object.
     */
    ResponseEntity<VoucherCodeDataResponseObject> buyDataVoucher(String dataPlanId, String mobilePhoneNumber);
}
