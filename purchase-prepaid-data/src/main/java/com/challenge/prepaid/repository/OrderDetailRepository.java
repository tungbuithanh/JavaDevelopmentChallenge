package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author tungbt
 */
@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {

}
