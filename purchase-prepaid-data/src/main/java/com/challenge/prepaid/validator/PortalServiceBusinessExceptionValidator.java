package ch.neosisit.ipension.portalservices.first.validator;

import org.springframework.stereotype.Component;
import ch.neosisit.ipension.frontoffice.commons.error.ErrorMessageEnumInterface;
import ch.neosisit.ipension.frontoffice.commons.error.validator.PortalServiceBusinessExceptionValidator;
import ch.neosisit.ipension.portalservices.first.exception.FirstPortalServiceResponseException;

/**
 *
 * @author DNH
 */
@Component
public class FirstPortalServiceBusinessExceptionValidator extends PortalServiceBusinessExceptionValidator<FirstPortalServiceResponseException> {

    @Override
    protected FirstPortalServiceResponseException createSpecificException(ErrorMessageEnumInterface error, Object... parameters) {
        return new FirstPortalServiceResponseException(error, parameters);
    }
}
