package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.google.common.collect.Sets;

/**
 *
 * @author tungbt
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "CARRIER_NETWORK", schema = "prepaidtopup")
@AttributeOverride(name = "id", column = @Column(name = "CARRIER_NETWORK_ID"))
public class CarrierNetwork extends AbstractEntity {
    @NotNull
    @Size(max = 100)
    @Column(name = "CARRIER_NAME")
    private String carrierName;

    @Size(max = 255)
    @Column(name = "DESCRIPTION")
    private String description;

//    @Fetch(FetchMode.SUBSELECT)
//    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "carrierNetwork", orphanRemoval = true)
//    private Set<DataPlan> dataPlan = Sets.newHashSet();
}
