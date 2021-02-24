package com.challenge.prepaid.validator;

import lombok.Getter;
import org.apache.commons.lang3.ArrayUtils;

/**
 *
 * @author tungbt
 */
@Getter
public class CommonPortalServiceResponseException extends RuntimeException {
    private ErrorMessageEnumInterface errorMessage;
    private Object[] parameters;

    public CommonPortalServiceResponseException(ErrorMessageEnumInterface errorMessage) {
        this.errorMessage = errorMessage;
    }

    public CommonPortalServiceResponseException(ErrorMessageEnumInterface errorMessage, Object... parameters) {
        this(errorMessage);
        this.parameters = ArrayUtils.isEmpty(parameters) ? null : parameters;
    }

    @Override
    public String getMessage() {
        return getErrorMessageString();
    }

    public String getErrorMessageString() {
        return String.format(errorMessage.getErrorMessage(), parameters);
    }
}
