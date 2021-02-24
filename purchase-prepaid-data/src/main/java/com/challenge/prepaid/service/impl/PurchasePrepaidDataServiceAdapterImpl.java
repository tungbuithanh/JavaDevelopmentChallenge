package com.challenge.prepaid.service.impl;

import com.challenge.prepaid.dto.StatusResponse;
import com.challenge.prepaid.dto.VoucherCodeData;
import com.challenge.prepaid.dto.VoucherCodeDataResponseObject;
import com.challenge.prepaid.service.PurchasePrepaidDataService;
import com.challenge.prepaid.service.PurchasePrepaidDataServiceAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

/**
 *
 * @author tungbt
 */
@Component
public class PurchasePrepaidDataServiceAdapterImpl implements PurchasePrepaidDataServiceAdapter {

    @Autowired
    private PurchasePrepaidDataService purchasePrepaidDataService;

    @Override
    public ResponseEntity<VoucherCodeDataResponseObject> buyDataVoucher(String dataPlanId, String mobilePhoneNumber) {
        VoucherCodeData voucherCodeData = purchasePrepaidDataService.buyDataVoucher(dataPlanId, mobilePhoneNumber);
        VoucherCodeDataResponseObject responseObject = VoucherCodeDataResponseObject.builder()
                .voucherCodeData(voucherCodeData)
                .status(StatusResponse.builder().success(true).build())
                .build();
        return new ResponseEntity<>(responseObject, HttpStatus.OK);
    }
}
