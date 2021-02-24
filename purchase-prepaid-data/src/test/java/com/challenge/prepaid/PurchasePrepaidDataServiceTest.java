package ch.neosisit.ipension.portalservices.first.service.affiliate;

import ch.neosisit.ipension.frontoffice.commons.settings.dto.DefSocieteObject;
import ch.neosisit.ipension.frontoffice.commons.settings.rest.RestInternalSettingsService;
import ch.neosisit.ipension.frontoffice.commons.util.AuthenticationUtil;
import ch.neosisit.ipension.frontoffice.commons.util.TestDataLoader;
import ch.neosisit.ipension.portalservices.first.domain.Affilie;
import ch.neosisit.ipension.portalservices.first.dto.api.AffiliateForGetParticular;
import ch.neosisit.ipension.portalservices.first.dto.spi.AffiliateCreationObject;
import ch.neosisit.ipension.portalservices.first.dto.spi.AffiliateUpdateObject;
import ch.neosisit.ipension.portalservices.first.repository.AffilieRepository;
import ch.neosisit.ipension.portalservices.first.service.config.FirstPortalServicesTestConfiguration;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.mockito.Matchers.anyString;


/**
 *
 * @author DNH
 */
@ActiveProfiles(FirstPortalServicesTestConfiguration.PROFILE)
@RunWith(SpringRunner.class)
@SpringBootTest(classes = FirstPortalServicesTestConfiguration.class)
@Transactional(rollbackFor = Throwable.class)
public class AffiliateServiceTest {
    private static final Logger LOGGER = LoggerFactory.getLogger(AffiliateServiceTest.class);

    @Autowired
    private AffilieRepository affilieRepository;

    @Autowired
    private AffiliateService affiliateService;

    private TestDataLoader testDataLoader = TestDataLoader.builder().path("/__files/affiliate/").build();

    @Before
    public void setup() {
        AuthenticationUtil.login("spi");
    }

    @Test
    public void testCreateUpdateSuccess() {
        AffiliateCreationObject creationObject = testDataLoader.loadInstance("case_create_success.json", AffiliateCreationObject.class);
        AffiliateCreationObject resultCreationObject = affiliateService.createAffilate(creationObject);
        Affilie affilie = affilieRepository.findFirstAffilieByIdAffilieBackOffice(resultCreationObject.getBackofficeAffiliateId());
        Assert.assertNotNull("New affilie must be created!", affilie);
        AffiliateUpdateObject updateObject = testDataLoader.loadInstance("case_update_success.json", AffiliateUpdateObject.class);
        AffiliateUpdateObject resultUpdateObject = affiliateService.updateAffiliate(updateObject, resultCreationObject.getBackofficeAffiliateId());
        Affilie updatedAffilie = affilieRepository.findFirstAffilieByIdAffilieBackOffice(resultCreationObject.getBackofficeAffiliateId());
        Assert.assertEquals("Updated affilie must has new numero affilie", resultUpdateObject.getAffiliateNumber(), updatedAffilie.getNumeroAffilie());
    }

    @Test
    public void testGetAffiliateById() {
        AffiliateCreationObject creationObject = testDataLoader.loadInstance("case_create_success.json", AffiliateCreationObject.class);
        AffiliateCreationObject resultCreationObject = affiliateService.createAffilate(creationObject);
        Affilie affilie = affilieRepository.findFirstAffilieByIdAffilieBackOffice(resultCreationObject.getBackofficeAffiliateId());
        Assert.assertNotNull("New affilie must be created!", affilie);


        AffiliateForGetParticular affiliateForGetParticular = affiliateService.getAffiliateDtoById(affilie.getId());
        Assert.assertNotNull(affiliateForGetParticular);
        Assert.assertEquals(affilie.getType(), affiliateForGetParticular.getType());
        Assert.assertEquals(affilie.getDateAffiliation(), affiliateForGetParticular.getAffiliationDate());
    }
    
}
