package com.challenge.prepaid.repository;

import com.challenge.prepaid.domain.VoucherCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author tungbt
 */
@Repository
public interface VoucherCodeRepository extends JpaRepository<VoucherCode, Integer> {

}
