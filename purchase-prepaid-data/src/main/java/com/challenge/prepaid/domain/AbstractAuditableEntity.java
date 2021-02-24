package com.challenge.prepaid.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

/**
 * Base entity with audit information.
 *
 * @author tungbt
 */
@MappedSuperclass
@Getter
@Setter
public abstract class AbstractAuditableEntity {

    @Size(max = 128)
    @Column(name = "USR_CREATION")
    private String usrCreation;

    @Column(name = "DTE_CREATION")
    private LocalDateTime dteCreation;

    @Size(max = 128)
    @Column(name = "USR_LAST_MODIFICATION")
    private String usrLastModification;

    @Column(name = "DTE_LAST_MODIFICATION")
    private LocalDateTime dteLastModification;

    @PrePersist
    public void beforeSave() {

    }

    @PreUpdate
    public void beforeUpdate() {

    }
}
