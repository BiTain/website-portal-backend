package com.tmdt.group8.dto.store;

import com.tmdt.group8.dto.user.UserResponse;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StoreOwner {
    private Long id;
    private String fullName;
    private String email;
    private String phoneNumber;
}
