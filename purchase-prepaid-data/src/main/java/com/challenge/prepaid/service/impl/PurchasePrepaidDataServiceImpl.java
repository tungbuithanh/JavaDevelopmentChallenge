package com.challenge.prepaid.service.impl;

import com.challenge.prepaid.domain.DataPlan;
import com.challenge.prepaid.domain.OrderDetail;
import com.challenge.prepaid.domain.VoucherCode;
import com.challenge.prepaid.dto.VoucherCodeData;
import com.challenge.prepaid.dto.VoucherCodeGenerator;
import com.challenge.prepaid.repository.DataPlanRepository;
import com.challenge.prepaid.repository.OrderDetailRepository;
import com.challenge.prepaid.repository.VoucherCodeRepository;
import com.challenge.prepaid.service.CommonPortalService;
import com.challenge.prepaid.service.PurchasePrepaidDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.util.Optional;

/**
 * @author tungbt
 */
@Service
@Transactional(rollbackFor = Throwable.class)
public class PurchasePrepaidDataServiceImpl extends CommonPortalService implements PurchasePrepaidDataService {

    @Autowired
    private DataPlanRepository dataPlanRepository;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Autowired
    private VoucherCodeRepository voucherCodeRepository;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${3rd-parties-api.restserver.url.api}")
    private String thirdPartiesApiURL;

    private final static int MIN_VOUCHER_CODE_ID = 0;
    private final static int MAX_VOUCHER_CODE_ID = 10;

    /**
     * This method used to created a voucher code
     */
    @Override
    public VoucherCodeData buyDataVoucher(String dataPlanId, String mobilePhoneNumber) {

        VoucherCodeData voucherCodeData = new VoucherCodeData();

        verifyMandatoryInput(dataPlanId, mobilePhoneNumber);
        validationFormatdataPlanId(dataPlanId);
        verifyPhoneNumber(mobilePhoneNumber);

        Optional<DataPlan> optionalDataPlan = dataPlanRepository.findById(Integer.parseInt(dataPlanId));
        //only process if existed a DataPlan in DB
        if(optionalDataPlan.isPresent()) {

            OrderDetail orderDetail = createOrderDetail(optionalDataPlan.get(), mobilePhoneNumber);
            orderDetailRepository.save(orderDetail);
            //create a random number from 0 to 10 ==> get voucher code from 3rd party
            String voucherCodeId = "id=" + getRandomNumber(MIN_VOUCHER_CODE_ID, MAX_VOUCHER_CODE_ID);
            VoucherCodeGenerator voucherCodeGenerator = restTemplate.getForObject(thirdPartiesApiURL + voucherCodeId, VoucherCodeGenerator.class);

            VoucherCode voucherCode = createVoucherCode(orderDetail, voucherCodeGenerator.getCode());
            voucherCodeRepository.save(voucherCode);

            voucherCodeData.setId(voucherCode.getId().toString());
            voucherCodeData.setStatus(voucherCode.getStatus());
            voucherCodeData.setVoucherCode(voucherCodeGenerator.getCode());
        }

        return voucherCodeData;
    }

}
