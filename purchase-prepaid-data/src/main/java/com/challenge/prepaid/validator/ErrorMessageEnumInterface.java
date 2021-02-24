package ch.neosisit.ipension.frontoffice.commons.error;

import org.springframework.http.HttpStatus;

/**
 *
 * @author DNH
 */
public interface ErrorMessageEnumInterface {

    HttpStatus getHttpStatus();

    String getErrorCode();

    String getErrorMessage();
}
