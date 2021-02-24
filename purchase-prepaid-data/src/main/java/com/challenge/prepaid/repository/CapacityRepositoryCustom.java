package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.Capacity;

import java.util.List;


/**
 * @author tungbt
 */
public interface CapacityRepositoryCustom {

    List<Capacity> findByCapacityName();
}
