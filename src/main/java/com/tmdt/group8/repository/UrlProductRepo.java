package com.tmdt.group8.repository;

import com.tmdt.group8.entity.UrlProduct;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UrlProductRepo extends JpaRepository<UrlProduct, Long> {
    List<UrlProduct> findByProductId(Long productId);
}
