package com.challenge.prepaid.validator;

import org.springframework.stereotype.Component;

/**
 *
 * @author tungbt
 */
@Component
public class PortalServiceBusinessExceptionValidator extends AbsPortalServiceBusinessExceptionValidator<CommonPortalServiceResponseException> {

    @Override
    protected CommonPortalServiceResponseException createSpecificException(ErrorMessageEnumInterface error, Object... parameters) {
        return new CommonPortalServiceResponseException(error, parameters);
    }
}
