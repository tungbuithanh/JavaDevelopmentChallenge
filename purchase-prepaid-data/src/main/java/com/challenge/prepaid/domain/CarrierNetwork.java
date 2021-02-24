package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author tungbt
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "CARRIER_NETWORK", schema = "nab")
@AttributeOverride(name = "id", column = @Column(name = "CARRIER_NETWORK_ID"))
public class CarrierNetwork extends AbstractEntity {
    @NotNull
    @Size(max = 100)
    @Column(name = "CARRIER_NAME")
    private String carrierName;

    @Size(max = 255)
    @Column(name = "DESCRIPTION")
    private String description;

}
