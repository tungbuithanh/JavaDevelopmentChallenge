package com.challenge.prepaid.service;

import com.challenge.prepaid.dto.PurchasePrepaidData;

/**
 *
 * @author tungbt
 */
public interface PurchasePrepaidDataService {

    /**
     * This method used to created a voucher code
     */
    PurchasePrepaidData buyDataVoucher(PurchasePrepaidData requestBody);
}
