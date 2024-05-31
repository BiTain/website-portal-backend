package com.tmdt.group8.service;

import com.tmdt.group8.dto.auth.LoginRequest;
import com.tmdt.group8.dto.auth.LoginResponse;

public interface AuthService {
    LoginResponse authenticateAndGenerateToken(LoginRequest loginRequest);
}
