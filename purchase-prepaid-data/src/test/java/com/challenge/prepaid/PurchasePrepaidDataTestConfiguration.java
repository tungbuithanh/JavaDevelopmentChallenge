package ch.neosisit.ipension.portalservices.first.service.config;

import static org.mockito.ArgumentMatchers.eq;

import javax.persistence.EntityManagerFactory;
import org.mockito.Mockito;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import ch.neosisit.ipension.frontoffice.commons.security.rest.authorization.RestAuthorizationService;
import ch.neosisit.ipension.frontoffice.commons.settings.dto.DefSocieteDetailObject;
import ch.neosisit.ipension.frontoffice.commons.settings.dto.DefSocieteObject;
import ch.neosisit.ipension.frontoffice.commons.settings.rest.RestInternalSettingsService;
import ch.neosisit.ipension.portalservices.first.EmployeeInsuranceConfirmationConf;
import ch.neosisit.ipension.portalservices.first.FirstPortalServicesConf;
import ch.neosisit.ipension.portalservices.first.message.sender.FirstPortalServiceMessageSender;
import ch.neosisit.ipension.portalservices.first.service.affiliate.AffiliateService;
import ch.neosisit.ipension.portalservices.first.service.affiliate.impl.AffiliateServiceImpl;

/**
 *
 * @author DNH
 */
@Profile(FirstPortalServicesTestConfiguration.PROFILE)
@Configuration
@Import({FirstPortalServicesConf.class})
@ComponentScan(basePackageClasses = {FirstPortalServicesTestConfiguration.class})
public class FirstPortalServicesTestConfiguration {
    public static final String PROFILE = "unit-test";

    @Bean
    @Primary
    @Profile("unit-test")
    public RestInternalSettingsService restInternalSettingsService() {
        RestInternalSettingsService restInternalSettingsServiceMock = Mockito.mock(RestInternalSettingsService.class);
        DefSocieteDetailObject defSocieteDetailObject = DefSocieteDetailObject.defSocieteDetailObjectBuilder()
                .defSocietyCode("066000")
                .build();
        DefSocieteDetailObject defSocieteDetailObject2 = DefSocieteDetailObject.defSocieteDetailObjectBuilder()
                .defSocietyCode("033000")
                .build();
        Mockito.when(restInternalSettingsServiceMock.getDefSocieteByBackofficeSocietyId(eq("11"))).thenReturn(defSocieteDetailObject);
        Mockito.when(restInternalSettingsServiceMock.getDefSocieteByCode(eq("066000"))).thenReturn(defSocieteDetailObject);
        Mockito.when(restInternalSettingsServiceMock.getDefSocieteByBackofficeSocietyId(eq("12"))).thenReturn(defSocieteDetailObject2);
        Mockito.when(restInternalSettingsServiceMock.getDefSocieteByCode(eq("033000"))).thenReturn(defSocieteDetailObject2);
        return restInternalSettingsServiceMock;
    }


    @Bean
    @Primary
    @Profile("unit-test")
    public RestAuthorizationService restAuthorizationService() {
        return Mockito.mock(RestAuthorizationService.class);
    }

    @Primary
    @Bean({"jpaTransactionManager", "transactionManager"})
    public PlatformTransactionManager jpaTransactionManager(EntityManagerFactory entityManagerFactory) {
        return new JpaTransactionManager(entityManagerFactory);
    }

    @Bean
    @Profile("unit-test")
    public AffiliateService affiliateService() {
        return new AffiliateServiceImpl();
    }


    @Profile("unit-test")
    @Bean("chainedTransactionManagerForMessageSending")
    public PlatformTransactionManager chainedTransactionManagerForMessageSending() {
        return Mockito.mock(PlatformTransactionManager.class);
    }

    @Primary
    @Bean
    @Profile("unit-test")
    public FirstPortalServiceMessageSender firstPortalServiceMessageSender() {
        return Mockito.mock(FirstPortalServiceMessageSender.class);
    }

    @Bean
    public EmployeeInsuranceConfirmationConf.EmployeeInsuranceConfirmationFileName employeeInsuranceConfirmationFileName() {
        return new EmployeeInsuranceConfirmationConf.EmployeeInsuranceConfirmationFileName();
    }

    @Bean
    public EmployeeInsuranceConfirmationConf.EmployeeInsuranceConfirmationHeaderImagesBySocietyCode insuranceConfirmationHeaderImagesBySocietyCode() {
        return new EmployeeInsuranceConfirmationConf.EmployeeInsuranceConfirmationHeaderImagesBySocietyCode();
    }
}
