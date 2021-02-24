package com.challenge.prepaid;

import com.challenge.prepaid.conf.PurchasePrepaidDataDBAppConf;
import com.challenge.prepaid.domain.Capacity;
import com.challenge.prepaid.domain.CarrierNetwork;
import com.challenge.prepaid.domain.DataPlan;
import com.challenge.prepaid.dto.VoucherCodeGenerator;
import com.challenge.prepaid.repository.DataPlanRepository;
import org.mockito.Mockito;
import org.springframework.context.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.util.Optional;

/**
 * @author tungbt
 */
@Profile(PurchasePrepaidDataTestConfiguration.PROFILE)
@Configuration
@Import({PurchasePrepaidDataDBAppConf.class})
@ComponentScan(basePackageClasses = {PurchasePrepaidDataTestConfiguration.class})
public class PurchasePrepaidDataTestConfiguration {
    public static final String PROFILE = "unit-test";

    @Bean
    @Primary
    @Profile("unit-test")
    public RestTemplate restTemplate() {
        RestTemplate restTemplateMock = Mockito.mock(RestTemplate.class);
        VoucherCodeGenerator voucherCodeGenerator = new VoucherCodeGenerator(1, "84542723236AAAAAB");
        Mockito.when(restTemplateMock.getForObject(Mockito.any(), Mockito.any())).thenReturn(voucherCodeGenerator);
        return restTemplateMock;
    }

    @Bean
//    @Primary
    @Profile("unit-test")
    public DataPlanRepository dataPlanRepository() {
        DataPlanRepository dataPlanRepositoryMock = Mockito.mock(DataPlanRepository.class);
        DataPlan dataPlan = createDataPlan();
        Optional<DataPlan> optionalDataPlan = Optional.of(dataPlan);
        Mockito.when(dataPlanRepositoryMock.findById(Mockito.any())).thenReturn(optionalDataPlan);

        return dataPlanRepositoryMock;
    }

    private DataPlan createDataPlan() {
        DataPlan dataPlan = new DataPlan();
        Capacity capacity = new Capacity();

        capacity.setCapacityName("High Bandwidth Data 1GB");
        capacity.setDescription("Package High Bandwidth 1GB");
        capacity.setBandwidth("1GB");
        capacity.setId(1);
        dataPlan.setCapacity(capacity);

        CarrierNetwork carrierNetwork = new CarrierNetwork();
        carrierNetwork.setCarrierName("Vietnamobile");
        carrierNetwork.setDescription("Vietnamobile Carrier Network");
        carrierNetwork.setId(1);

        dataPlan.setCarrierNetwork(carrierNetwork);
        dataPlan.setPrice(new BigDecimal("10"));
        dataPlan.setId(1);

        return dataPlan;
    }

}
