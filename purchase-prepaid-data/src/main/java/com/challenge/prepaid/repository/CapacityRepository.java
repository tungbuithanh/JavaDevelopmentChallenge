package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.Capacity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author tungbt
 */
@Repository
public interface CapacityRepository extends JpaRepository<Capacity, Integer>, CapacityRepositoryCustom {

}
