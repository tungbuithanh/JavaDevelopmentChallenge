package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

/**
 * @author tungbt
 */
@Entity
@Getter
@Setter
@Table(name = "DATA_PLAN", schema = "nab")
@AttributeOverride(name = "id", column = @Column(name = "DATA_PLAN_ID"))
@Accessors(chain = true)
public class DataPlan extends AbstractEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CARRIER_NETWORK_ID")
    private CarrierNetwork carrierNetwork;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CAPACITY_ID")
    private Capacity capacity;

    @NotNull
    @Size(max = 100)
    @Column(name = "DATA_PLAN_NAME")
    private String dataPlanName;

    @NotNull
    @Column(name = "PRICE")
    private BigDecimal price;

}

