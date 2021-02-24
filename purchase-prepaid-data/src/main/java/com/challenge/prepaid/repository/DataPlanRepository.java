package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.DataPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * @author tungbt
 */
@Repository
public interface DataPlanRepository extends JpaRepository<DataPlan, Integer> {

    Optional<DataPlan> findById(Integer dataPlanId);
}
