package com.tmdt.group8.dto.product;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ProductRequest {
    private String name;
    private double price;
    private String productUrl;
    private Long categoryId;
    private List<String> productImages;
    private Long userId;
    private List<String> oldImage;
}
