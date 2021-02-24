package com.challenge.prepaid.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

/**
 * @author tungbt
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PurchasePrepaidData {

    @ApiModelProperty(notes = "ID of prepaid top-up data card")
    private String id;

    @ApiModelProperty(notes = "Carrier name which provides prepaid data packages", required = true, example = "vietnamobile, T-mobile, Viettel, Mobifone")
    private String carrierName;

    @ApiModelProperty(notes = "Capacity for the data package", required = true, example = "5GB")
    private String capacityName;

    @ApiModelProperty(notes = "Mobile phone number of the customer (ISO E164)", required = true, example = "84908226344")
    private String mobilePhoneNumber;

    @ApiModelProperty(notes = "Price for each package prepaid data card", required = true, example = "10.75")
    private BigDecimal price;

    @ApiModelProperty(notes = "Number of the data card which customer want to buy", required = true, example = "1")
    private int quantity;

    @ApiModelProperty(notes = "Number of days for this package", required = true, example = "30 days data")
    private String dataPlanName;

    @ApiModelProperty(notes = "Transaction cost for each request", required = true, example = "0")
    private BigDecimal transactionCost;

    @ApiModelProperty(notes = "Total for prepaid data package", required = true, example = "20.0")
    private BigDecimal total;

}
