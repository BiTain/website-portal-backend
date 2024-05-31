package com.tmdt.group8.dto.auth;

import com.tmdt.group8.dto.user.UserResponse;
import com.tmdt.group8.entity.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
public class LoginResponse {
    private UserResponse user;
    private String message;
    private String accessToken;
    private String refreshToken;
    private Date createdDate;
    private final String tokenType = "Bearer ";
}
