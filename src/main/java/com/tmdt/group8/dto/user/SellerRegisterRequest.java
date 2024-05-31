package com.tmdt.group8.dto.user;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class SellerRegisterRequest {
    private String fullName;
    private String email;
    private String phoneNumber;
    private String storeName;
    private String urlStore;
    private String avatar;
    private List<String> storeImages;
}
