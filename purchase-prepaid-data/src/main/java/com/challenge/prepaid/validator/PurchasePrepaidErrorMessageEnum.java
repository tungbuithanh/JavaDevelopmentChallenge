package ch.neosisit.ipension.frontoffice.commons.error;

import org.springframework.http.HttpStatus;
import lombok.Getter;

/**
 *
 * @author DNH
 */
@Getter
public enum CommonErrorMessageEnum implements ErrorMessageEnumInterface {
    ACCESS_DENIED(HttpStatus.FORBIDDEN, "TE-CLT-03", "Access denied"),
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "TE-SRV-00", "Internal server error"),
    INVALID_FORMAT(HttpStatus.BAD_REQUEST, "TE-CLT-06", "Invalid format"),
    INVALID_FORMAT_WITH_REFERENCE_PATH_AND_INVALID_VALUE_PLACE_HOLDER(HttpStatus.BAD_REQUEST, "TE-CLT-06", "Invalid format: %s (value: %s)"),
    INVALID_FORMAT_WITH_REFERENCE_PATH_AND_DETAIL_PLACE_HOLDER(HttpStatus.BAD_REQUEST, "TE-CLT-06", "Invalid format: %s (%s)"),
    ;
    private HttpStatus httpStatus;
    private String errorCode;
    private String errorMessage;

    CommonErrorMessageEnum(HttpStatus httpStatus, String errorCode, String errorMessage) {
        this.httpStatus = httpStatus;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }
}
