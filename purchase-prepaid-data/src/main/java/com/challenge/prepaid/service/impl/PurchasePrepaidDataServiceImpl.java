package com.challenge.prepaid.service.impl;

import com.challenge.prepaid.dto.PurchasePrepaidData;
import com.challenge.prepaid.service.PurchasePrepaidDataService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author tungbt
 */
@Service
@Transactional(rollbackFor = Throwable.class)
public class PurchasePrepaidDataServiceImpl implements PurchasePrepaidDataService {

    /**
     * This method used to created a voucher code
     */
    @Override
    public PurchasePrepaidData buyDataVoucher(PurchasePrepaidData requestBody) {

        //TODO need to perform check business rules for requestBody before call repository to store data to related tables
        return requestBody;
    }
}
