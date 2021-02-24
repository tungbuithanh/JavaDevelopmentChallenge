package com.challenge.prepaid.service;

import com.challenge.prepaid.dto.PurchasePrepaidData;
import com.challenge.prepaid.dto.VoucherCodeData;

/**
 * @author tungbt
 */
public interface PurchasePrepaidDataService {

    /**
     * This method used to created a voucher code
     */
    VoucherCodeData buyDataVoucher(String dataPlanId, String mobilePhoneNumber);
}
