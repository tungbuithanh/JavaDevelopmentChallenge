package ch.neosisit.ipension.portalservices.first.service.salarydeclaration.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import ch.neosisit.ipension.frontoffice.commons.dto.Status;
import ch.neosisit.ipension.portalservices.first.dto.spi.SalaryDeclaration;
import ch.neosisit.ipension.portalservices.first.dto.spi.SalaryDeclarationCreationObject;
import ch.neosisit.ipension.portalservices.first.service.salarydeclaration.SalaryDeclarationService;
import ch.neosisit.ipension.portalservices.first.service.salarydeclaration.SalaryDeclarationServiceAdapter;

/**
 *
 * @author DNH
 */
@Component
public class SalaryDeclarationServiceAdapterImpl implements SalaryDeclarationServiceAdapter {

    @Autowired
    private SalaryDeclarationService salaryDeclarationService;

    @Override
    public ResponseEntity<SalaryDeclarationCreationObject> createSalaryDeclaration(SalaryDeclaration request, String backofficeAffiliateId) {
        SalaryDeclaration salaryDeclaration = salaryDeclarationService.createSalaryDeclaration(request, backofficeAffiliateId);
        SalaryDeclarationCreationObject responseObject = SalaryDeclarationCreationObject.builder()
                .lastSalaryDeclaration(salaryDeclaration)
                .status(Status.builder().success(true).build())
                .build();
        return new ResponseEntity<>(responseObject, HttpStatus.OK);
    }
}
