package com.tmdt.group8.dto.store;

import com.tmdt.group8.dto.BaseResponse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class StoreResponse extends BaseResponse {
    private String name;
    private String urlStore;
    private StoreOwner owner;
    private List<String> imageUrls;
}
