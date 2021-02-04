package com.challenge.prepaid.repository.impl;

import com.challenge.prepaid.domain.Capacity;
import com.challenge.prepaid.repository.CapacityRepositoryCustom;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tungbt
 */
public class CapacityRepositoryImpl implements CapacityRepositoryCustom {
    
    @PersistenceContext
    private EntityManager entityManager;
    
    @Override
    public List<Capacity> findByCapacityName() {

        //create dummy data
        List<Capacity> lstCapacity = new ArrayList<Capacity>();
//        Capacity capacity = Capacity.builder()
//                .capacityName("2GB")
//                .bandwidth("high")
//                .description("this package with capacity 2GB data and high bandwidth")
//                .build();

        Capacity capacity = new Capacity();
        capacity.setCapacityName("2GB");
        capacity.setBandwidth("high");
        capacity.setDescription("this package with capacity 2GB data and high bandwidth");
        lstCapacity.add(capacity);
        return lstCapacity;
    }


//    public List<StagAffiliate> findByMigrationStatus() {
//        QStagAffiliate stagAffiliate = QStagAffiliate.stagAffiliate;
//        return new JPAQuery<StagAffiliate>(entityManager).from(stagAffiliate)
//                .join(stagAffiliate.stagPartner, QStagPartner.stagPartner).fetchJoin()
//                .leftJoin( QStagPartner.stagPartner.stagPartnerAddress, QStagPartnerAddress.stagPartnerAddress).fetchJoin()
//                .leftJoin(stagAffiliate.stagSalaryDeclarations, QStagSalaryDeclaration.stagSalaryDeclaration).fetchJoin()
//                .where(stagAffiliate.migrationStatus.eq(MigrationStatut.TO_MIGRATE)
//                       .or(stagAffiliate.migrationStatus.eq(MigrationStatut.MIGRATED))
//                )
//                .fetch();
//    }
}
