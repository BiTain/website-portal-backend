package com.tmdt.group8.mapper;

import com.tmdt.group8.dto.category.CategoryRequest;
import com.tmdt.group8.dto.category.CategoryResponse;
import com.tmdt.group8.entity.Category;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CategoryMapper extends GenericMapper<Category, CategoryRequest, CategoryResponse> {
}
