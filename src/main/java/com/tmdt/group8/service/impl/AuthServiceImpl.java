package com.tmdt.group8.service.impl;

import com.tmdt.group8.config.security.JwtTokenProvider;
import com.tmdt.group8.config.security.RefreshTokenProvider;
import com.tmdt.group8.dto.auth.LoginRequest;
import com.tmdt.group8.dto.auth.LoginResponse;
import com.tmdt.group8.entity.User;
import com.tmdt.group8.exception.AccountBlockedException;
import com.tmdt.group8.mapper.UserMapper;
import com.tmdt.group8.repository.UserRepo;
import com.tmdt.group8.service.AuthService;
import lombok.AllArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;

@AllArgsConstructor
@Service
public class AuthServiceImpl implements AuthService {
    private AuthenticationManager authenticationManager;
    private JwtTokenProvider jwtTokenProvider;
    private RefreshTokenProvider refreshTokenProvider;
    private UserRepo userRepo;
    private PasswordEncoder passwordEncoder;
    private UserMapper userMapper;

    @Override
    public LoginResponse authenticateAndGenerateToken(LoginRequest loginRequest) {
//        Authentication authentication = authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword())
//        );

        User user = userRepo.findByUsername(loginRequest.getUsername()).orElseThrow(
                () -> new RuntimeException("Thông tin đăng nhập không chính xác!"));

        if (!passwordEncoder.matches(loginRequest.getPassword(), user.getPassword())) {
            throw new RuntimeException("Thông tin đăng nhập không chính xác!");
        }

        if(!user.getEnabled()) {
            throw new AccountBlockedException("Tài khoản của bạn đã bị khóa hoặc chưa được duyệt");
        }

        Authentication authentication = new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword());

        SecurityContextHolder.getContext().setAuthentication(authentication);

        String accessToken = jwtTokenProvider.generateJwtToken(loginRequest.getUsername());

        return new LoginResponse(userMapper.entityToResponse(user), "Đăng nhập thaành công!",
                accessToken, null, new Date());
    }
}
