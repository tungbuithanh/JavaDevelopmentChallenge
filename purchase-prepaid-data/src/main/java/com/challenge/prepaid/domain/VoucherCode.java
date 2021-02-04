package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
@Table(name = "VOUCHER_CODE", schema = "prepaidtopup")
@AttributeOverride(name = "id", column = @Column(name = "VOUCHER_CODE_ID"))
public class VoucherCode extends AbstractEntity {

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ORDER_DETAIL_ID")
    private OrderDetail orderDetail;

    @NotNull
    @Column(name = "VOUCHER_CODE")
    private String voucherCode;

    @NotNull
    @Column(name = "ISSUE_DATE")
    private LocalDateTime issueDate;

    @NotNull
    @Column(name = "STATUS")
    @Enumerated(EnumType.STRING)
    private Status status;
}
