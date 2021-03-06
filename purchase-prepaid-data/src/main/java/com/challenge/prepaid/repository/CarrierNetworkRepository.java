package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.CarrierNetwork;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author tungbt
 */
@Repository
public interface CarrierNetworkRepository extends JpaRepository<CarrierNetwork, Integer> {

}
