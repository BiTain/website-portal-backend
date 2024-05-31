package com.tmdt.group8.dto.category;

import com.tmdt.group8.dto.BaseResponse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class CategoryResponse extends BaseResponse {
    private String name;
    private List<CategoryResponse> children;
}
