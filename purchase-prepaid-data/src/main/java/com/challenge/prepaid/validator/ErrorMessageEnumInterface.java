package com.challenge.prepaid.validator;

import org.springframework.http.HttpStatus;

/**
 *
 * @author tungbt
 */
public interface ErrorMessageEnumInterface {

    HttpStatus getHttpStatus();

    String getErrorCode();

    String getErrorMessage();
}
