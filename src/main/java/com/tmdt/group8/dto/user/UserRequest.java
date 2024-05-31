package com.tmdt.group8.dto.user;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserRequest {
    private String username;
    private String email;
    private String password;
    private String fullName;
    private String phoneNumber;
}
