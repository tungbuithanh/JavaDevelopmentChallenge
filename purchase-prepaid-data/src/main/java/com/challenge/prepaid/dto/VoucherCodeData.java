package com.challenge.prepaid.dto;

import com.challenge.prepaid.domain.Status;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author tungbt
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class VoucherCodeData {

    @ApiModelProperty(notes = "Voucher code ID", required = true, example = "1")
    private String id;

    @ApiModelProperty(notes = "Unique identifier which return code to the customer who purchase prepaid data", example = "124543UTN99332CDFG")
    private String voucherCode;

    @ApiModelProperty(notes = "Voucher code generator status", required = true, example = "SUCCESS, PENDING, FAILURE")
    private Status status;
}
