package ch.neosisit.ipension.frontoffice.commons.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author DNH
 */
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Status {
    @ApiModelProperty(notes = "True if the request has been processed successfully - False if an error occurred and the request has not been processed ", required = true)
    private boolean success;
    @ApiModelProperty(notes = "Business error code corresponding to the error (if any)", example = "BE-XXX-yyy-zz")
    private String errorCode;
    @ApiModelProperty(notes = "Message corresponding to the error (if any)", example = "Missing mandatory address")
    private String errorMessage;
}
