package com.challenge.prepaid.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;

/**
 *
 * @author tungbt
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class BaseResponseObject {

    @ApiModelProperty(notes = "Status of the request’s result")
    private StatusResponse status;
}
