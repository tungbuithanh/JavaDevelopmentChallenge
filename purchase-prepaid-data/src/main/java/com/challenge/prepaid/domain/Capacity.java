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
 *
 * @author tungbt
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "CAPACITY", schema = "prepaidtopup")
@AttributeOverride(name = "id", column = @Column(name = "CAPACITY_ID"))
public class Capacity extends AbstractEntity {

    @NotNull
    @Size(max = 100)
    @Column(name = "CAPACITY_NAME")
    private String capacityName;

    @NotNull
    @Size(max = 100)
    @Column(name = "BANDWIDTH")
    private String bandwidth;

    @Size(max = 255)
    @Column(name = "DESCRIPTION")
    private String description;

//    @Fetch(FetchMode.SUBSELECT)
//    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "capacity", orphanRemoval = true)
//    private Set<DataPlan> dataPlan = Sets.newHashSet();
}
