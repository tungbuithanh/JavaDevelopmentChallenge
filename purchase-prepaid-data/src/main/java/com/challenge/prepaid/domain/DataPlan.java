package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import lombok.NoArgsConstructor;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

/**
 *
 * @author tungbt
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "DATA_PLAN", schema = "prepaidtopup")
@AttributeOverride(name = "id", column = @Column(name = "DATA_PLAN_ID"))
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

//    @Fetch(FetchMode.SUBSELECT)
//    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "dataPlan", orphanRemoval = true)
//    private Set<OrderDetail> orderDetail = Sets.newHashSet();

}

