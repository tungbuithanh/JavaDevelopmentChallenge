package com.challenge.prepaid.validator;

import org.apache.commons.lang3.StringUtils;

/**
 *
 * @author tungbt
 */
public abstract class AbsPortalServiceBusinessExceptionValidator<T extends CommonPortalServiceResponseException> {
    public void throwIfNull(Object value, ErrorMessageEnumInterface error, Object... parameters) {
        throwIfFalse(value != null, error, parameters);
    }

    public void throwIfNotNull(Object value, ErrorMessageEnumInterface error, Object... parameters) {
        throwIfFalse(value == null, error, parameters);
    }

    public void throwIfStringIsBlank(String value, ErrorMessageEnumInterface error, Object... parameters) {
        throwIfFalse(StringUtils.isNotBlank(value), error, parameters);
    }

    public void throwIfFalse(boolean condition, ErrorMessageEnumInterface error, Object... parameters) {
        if (!condition) {
            throw createSpecificException(error, parameters);
        }
    }

    public void throwIfTrue(boolean condition, ErrorMessageEnumInterface error, Object... parameters) {
        if (condition) {
            throw createSpecificException(error, parameters);
        }
    }

    protected abstract T createSpecificException(ErrorMessageEnumInterface error, Object... parameters);
}
