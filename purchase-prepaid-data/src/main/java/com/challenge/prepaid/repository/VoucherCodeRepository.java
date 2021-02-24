package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.Capacity;
import org.springframework.stereotype.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author tungbt
 */
@Repository
public interface CapacityRepository extends JpaRepository<Capacity, Integer>, CapacityRepositoryCustom {

    Capacity findById(Integer capacityId);

}
