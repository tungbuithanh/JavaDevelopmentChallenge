package com.challenge.prepaid.validator;

import lombok.Getter;
import org.springframework.http.HttpStatus;

/**
 *
 * @author tungbt
 */
@Getter
public enum PurchasePrepaidErrorMessageEnum implements ErrorMessageEnumInterface {

    ACCESS_DENIED(HttpStatus.FORBIDDEN, "TE-000-001", "Access denied"),
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "TE-000-002", "Internal server error"),
    INVALID_FORMAT(HttpStatus.BAD_REQUEST, "TE-000-003", "Invalid format"),
    MISSING_MANDATORY_ATTRIBUTE_IN_REQUEST_BODY(HttpStatus.BAD_REQUEST, "BE-000-001", "Missing mandatory attribute in request body"),
    FIELD_DATA_PLAN_ID_NUMBER_FORMAT_WRONG(HttpStatus.BAD_REQUEST, "TE-000-004", "Data Plan Id Number is invalid format"),
    INVALID_PHONE(HttpStatus.BAD_REQUEST, "BE-000-002", "Invalid phone number"),
    ;
    private HttpStatus httpStatus;
    private String errorCode;
    private String errorMessage;

    PurchasePrepaidErrorMessageEnum(HttpStatus httpStatus, String errorCode, String errorMessage) {
        this.httpStatus = httpStatus;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }
}
