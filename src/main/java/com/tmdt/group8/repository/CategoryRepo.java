package com.tmdt.group8.repository;

import com.tmdt.group8.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface CategoryRepo extends JpaRepository<Category, Long>, JpaSpecificationExecutor<Category> {
}
