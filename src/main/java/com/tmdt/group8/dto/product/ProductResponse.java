package com.tmdt.group8.dto.product;

import com.tmdt.group8.dto.BaseResponse;
import com.tmdt.group8.dto.store.StoreResponse;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter
public class ProductResponse extends BaseResponse {
    private String name;
    private BigDecimal price;
    private String slug;
    private String category;
    private Long categoryId;
    private StoreResponse storeOwner;
    private List<String> productUrls;
    private List<String> productImages;
}
