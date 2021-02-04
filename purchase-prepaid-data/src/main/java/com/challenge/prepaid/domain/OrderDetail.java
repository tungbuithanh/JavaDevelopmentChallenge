package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 *
 * @author tungbt
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "ORDER_DETAIL", schema = "prepaidtopup")
@AttributeOverride(name = "id", column = @Column(name = "ORDER_DETAIL_ID"))
public class OrderDetail extends AbstractEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "DATA_PLAN_ID")
    private DataPlan dataPlan;

    @NotNull
    @Column(name = "QUANTITY")
    private int quantity;

    @NotNull
    @Column(name = "TELEPHONE_NUMBER")
    private String telephoneNumber;

    @NotNull
    @Column(name = "ORDER_DATE")
    private LocalDateTime orderDate;

    @NotNull
    @Column(name = "TRANSACTION_COST")
    private BigDecimal transactionCost;

    @NotNull
    @Column(name = "TOTAL")
    private BigDecimal total;
}
