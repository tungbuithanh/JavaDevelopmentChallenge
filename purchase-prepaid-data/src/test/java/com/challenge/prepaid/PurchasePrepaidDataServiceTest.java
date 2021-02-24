package com.challenge.prepaid;

import com.challenge.prepaid.dto.VoucherCodeData;
import com.challenge.prepaid.service.PurchasePrepaidDataService;
import com.challenge.prepaid.validator.CommonPortalServiceResponseException;
import com.challenge.prepaid.validator.PurchasePrepaidErrorMessageEnum;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author tungbt
 */
@ActiveProfiles(PurchasePrepaidDataTestConfiguration.PROFILE)
@RunWith(SpringRunner.class)
@SpringBootTest(classes = PurchasePrepaidDataTestConfiguration.class)
@Transactional(rollbackFor = Throwable.class)
public class PurchasePrepaidDataServiceTest {

    @Autowired
    private PurchasePrepaidDataService purchasePrepaidDataService;

    @Test
    public void testMissingMandatory() {
        try {
            VoucherCodeData resultVoucherCodeData = purchasePrepaidDataService.buyDataVoucher("", "0927096899");
            Assert.fail("Business exception must be thrown");
        } catch (CommonPortalServiceResponseException e) {
            Assert.assertEquals("Missing mandatory attribute in request body", PurchasePrepaidErrorMessageEnum.MISSING_MANDATORY_ATTRIBUTE_IN_REQUEST_BODY, e.getErrorMessage());
        }
    }

    @Test
    public void testInvalidPhoneNumber() {
        try {
            VoucherCodeData resultVoucherCodeData = purchasePrepaidDataService.buyDataVoucher("2", "123");
            Assert.fail("Business exception must be thrown");
        } catch (CommonPortalServiceResponseException e) {
            Assert.assertEquals("Invalid phone number", PurchasePrepaidErrorMessageEnum.INVALID_PHONE, e.getErrorMessage());
        }
    }

    @Test
    public void testBuyDataVoucherSuccess() {

        VoucherCodeData resultVoucherCodeData = purchasePrepaidDataService.buyDataVoucher("1", "0927096899");
        Assert.assertNotNull(resultVoucherCodeData);
        Assert.assertEquals("84542723236AAAAAB", resultVoucherCodeData.getVoucherCode());
    }

}
