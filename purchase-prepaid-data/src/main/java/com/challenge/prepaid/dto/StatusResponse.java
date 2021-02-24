package com.challenge.prepaid.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;

/**
 *
 * @author tungbt
 */
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StatusResponse {
    @ApiModelProperty(notes = "True if the request has been processed successfully - False if an error occurred and the request has not been processed ", required = true)
    private boolean success;
    @ApiModelProperty(notes = "Business error code corresponding to the error (if any)", example = "TE-SRV-yyy-zz")
    private String errorCode;
    @ApiModelProperty(notes = "Message corresponding to the error (if any)", example = "Missing mandatory address")
    private String errorMessage;
}
