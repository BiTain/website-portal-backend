package com.tmdt.group8.dto.user;

import com.tmdt.group8.dto.BaseResponse;
import com.tmdt.group8.entity.RoleType;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserResponse extends BaseResponse {
    private String fullName;
    private String email;
    private String username;
    private String phoneNumber;
    private String avatar;
    private Boolean enabled;
    @Enumerated(EnumType.STRING)
    private RoleType role;
}
