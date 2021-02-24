package ch.neosisit.ipension.portalservices.first.service;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import ch.neosisit.ipension.frontoffice.commons.domain.core.enums.AddressType;
import ch.neosisit.ipension.frontoffice.commons.domain.core.enums.PartnerCategory;
import ch.neosisit.ipension.frontoffice.commons.dto.first.Address;
import ch.neosisit.ipension.frontoffice.commons.dto.first.BaseAffiliate;
import ch.neosisit.ipension.frontoffice.commons.error.CommonErrorMessageEnum;
import ch.neosisit.ipension.frontoffice.commons.error.ErrorMessageEnumInterface;
import ch.neosisit.ipension.frontoffice.commons.util.PhoneAndEmailUtil;
import ch.neosisit.ipension.frontoffice.commons.util.PortalLocaleISOUtil;
import ch.neosisit.ipension.portalservices.first.repository.AssureRepository;
import ch.neosisit.ipension.portalservices.first.service.affiliate.error.UpdateAffiliateServiceErrorMessageEnum;
import ch.neosisit.ipension.portalservices.first.validator.FirstPortalServiceBusinessExceptionValidator;

/**
 *
 * @author ttb
 */
public abstract class AbstractFirstPortalService {
    protected static final String DOT_CHARACTER = ".";
    protected static final String NATIONALITY_PATH_REFERENCE = "nationality";

    @Autowired
    protected FirstPortalServiceBusinessExceptionValidator validator;

    @Autowired
    private AssureRepository assureRepository;

    /**
     * Verify attributes of address is not null (if the parent addresses object is defined)
     */
    protected void verifyAddresses(List<Address> addresses, ErrorMessageEnumInterface missingAttributeError,
                                   ErrorMessageEnumInterface invalidISOFormat) {
        addresses.forEach(address -> {
            validator.throwIfStringIsBlank(address.getZipCode(), missingAttributeError);
            validator.throwIfStringIsBlank(address.getTown(), missingAttributeError);
            validator.throwIfStringIsBlank(address.getCountry(), missingAttributeError);
            validator.throwIfFalse(PortalLocaleISOUtil.isValidISOCountry(address.getCountry()), invalidISOFormat);
        });
    }


    private void validationFormatOasiNumber(String oasiNumber) {
        validator.throwIfFalse(oasiNumber.length() <= 13, UpdateAffiliateServiceErrorMessageEnum.FIELD_OASI_NUMBER_FORMAT_WRONG);
        validator.throwIfFalse(NumberUtils.isDigits(oasiNumber), UpdateAffiliateServiceErrorMessageEnum.FIELD_OASI_NUMBER_FORMAT_WRONG);

    }

    /**
     * Verify affiliates attributes is not null
     */
    protected void verifyAffiliateAttributes(BaseAffiliate affiliate, ErrorMessageEnumInterface missingMandatoryAttributeError,
                                             ErrorMessageEnumInterface invalidEmailError, ErrorMessageEnumInterface invalidISOFormat) {

        validator.throwIfFalse(StringUtils.isNotBlank(affiliate.getAffiliateNumber()), missingMandatoryAttributeError);
        validator.throwIfNull(affiliate.getCategory(), missingMandatoryAttributeError);
        validator.throwIfNull(affiliate.getType(), missingMandatoryAttributeError);
        validator.throwIfNull(affiliate.getAffiliationDate(), missingMandatoryAttributeError);

        //is ISO 3166-1 format (if not null) language
        validator.throwIfFalse(affiliate.getLanguage() == null || PortalLocaleISOUtil.isValidISOLanguage(affiliate.getLanguage().toLowerCase()), invalidISOFormat);

        //is valid email format (if not null)
        validator.throwIfFalse(affiliate.getEmail() == null || EmailValidator.getInstance().isValid(affiliate.getEmail()), invalidEmailError);
    }

    /**
     * Verify affiliate is not null and if AFFILIATE.category = individual
     */
    protected void verifyAffiliateBaseOnPartnerCategory(BaseAffiliate affiliate, ErrorMessageEnumInterface missingMandatoryAttributeCategoryIndividual,
                                                        ErrorMessageEnumInterface missingMandatoryAttributeCategoryOrganisation) {

        if (PartnerCategory.PERSON.equals(affiliate.getCategory())) {

            validator.throwIfStringIsBlank(affiliate.getLastName(), missingMandatoryAttributeCategoryIndividual);
            validator.throwIfStringIsBlank(affiliate.getFirstName(), missingMandatoryAttributeCategoryIndividual);
            validator.throwIfFalse(affiliate.getNationality() == null || PortalLocaleISOUtil.isValidNationality(affiliate.getNationality()),
                    CommonErrorMessageEnum.INVALID_FORMAT_WITH_REFERENCE_PATH_AND_INVALID_VALUE_PLACE_HOLDER, NATIONALITY_PATH_REFERENCE, affiliate.getNationality());
            verifyOasiNumber(affiliate.getOasiNumber(), missingMandatoryAttributeCategoryIndividual);
        }
        //companyName is not null if AFFILIATE.category = organisation
        if (PartnerCategory.ORGANISATION.equals(affiliate.getCategory())) {
            validator.throwIfStringIsBlank(affiliate.getCompanyName(), missingMandatoryAttributeCategoryOrganisation);
        }
    }


    /**
     * Verify the OasiNumber not null and has valid format.
     */
    protected void verifyOasiNumber(String oasiNumber, ErrorMessageEnumInterface missingMandatoryAttributeCategoryIndividual) {
        validator.throwIfStringIsBlank(oasiNumber, missingMandatoryAttributeCategoryIndividual);
        validationFormatOasiNumber(oasiNumber);
    }

    /**
     * Verify international phone number format
     */
    protected void verifyAffiliatePhoneNumber(String phoneNumber, ErrorMessageEnumInterface invalidPhone) {

        validator.throwIfFalse(phoneNumber == null || PhoneAndEmailUtil.validatePhone(phoneNumber), invalidPhone);
    }

    /**
     * If multiple Addresses are provided:
     * a.	Only the first Address of type “PRIMARY” and the first Address of type “SECONDARY” are saved.
     * b.	All other Addresses are discarded and not saved in DB
     * @param addresses
     */
    protected List<Address> pretreatmentAddress(List<Address> addresses, ErrorMessageEnumInterface missingAttributeError) {
        List<Address> newAddresses = new ArrayList<>();
        if (addresses != null) {
            boolean firstPrimary = Boolean.TRUE;
            boolean firstSecondary = Boolean.TRUE;
            for (Address address : addresses) {
                validator.throwIfNull(address.getType(), missingAttributeError);
                if (firstPrimary && AddressType.PRIMARY.equals(address.getType())) {
                    newAddresses.add(address);
                    firstPrimary = Boolean.FALSE;
                }

                if (firstSecondary && AddressType.SECONDARY.equals(address.getType())) {
                    newAddresses.add(address);
                    firstSecondary = Boolean.FALSE;
                }
            }
        }
        return newAddresses;
    }


}
