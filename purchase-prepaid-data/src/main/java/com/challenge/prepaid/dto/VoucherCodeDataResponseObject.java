package com.challenge.prepaid.dto;

import io.swagger.annotations.ApiModel;
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
@ApiModel(description = "The response object for employees services")
public class VoucherCodeDataResponseObject extends BaseResponseObject {

    @ApiModelProperty(notes = "Employee including Adresse, Insured Person and Work Relation data")
    private VoucherCodeData voucherCodeData;

    @Builder
    public VoucherCodeDataResponseObject(StatusResponse status, VoucherCodeData voucherCodeData) {
        super(status);
        this.voucherCodeData = voucherCodeData;
    }
}
