package ch.neosisit.ipension.portalservices.first.service.affiliate;

import ch.neosisit.ipension.portalservices.first.dto.api.AffiliateResponse;
import ch.neosisit.ipension.portalservices.first.dto.spi.AffiliateCreationObject;
import ch.neosisit.ipension.portalservices.first.dto.spi.AffiliateResponseObject;
import ch.neosisit.ipension.portalservices.first.dto.spi.AffiliateUpdateObject;
import org.springframework.http.ResponseEntity;

/**
 *
 * @author DNH
 */
public interface AffiliateServiceAdapter {

    /**
     * This adapter will call [SV-702-001] Creation of a new Affiliate
     */
    ResponseEntity<AffiliateResponseObject<AffiliateCreationObject>> createAffiliate(AffiliateCreationObject requestBody);

    /**
     * This adapter will call [SV-702-002] – Update Affiliate
     */
    ResponseEntity<AffiliateResponseObject<AffiliateUpdateObject>> updateAffiliate(AffiliateUpdateObject requestBody, String backofficeAffiliateId);


    /**
     * This adapter will call [SV-701-003] – Get Affiliate
     * @param affiliateId
     * @return
     */
    ResponseEntity<AffiliateResponse> getAffiliateById(String affiliateId);
}
