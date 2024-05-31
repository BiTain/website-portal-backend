package com.tmdt.group8.repository;

import com.tmdt.group8.entity.Image;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImageRepo extends JpaRepository<Image, Long> {
    List<Image> findByProductId(Long productId);
}
