package com.tmdt.group8.config.security;

import com.tmdt.group8.entity.RefreshToken;
import com.tmdt.group8.entity.User;
import com.tmdt.group8.repository.RefreshTokenRepo;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class RefreshTokenProvider {
    @Value("${jwt.jwt-refresh-expiration}")
    private String refreshTokenDuration;

    private final RefreshTokenRepo refreshTokenRepo;

    public RefreshTokenProvider(RefreshTokenRepo refreshTokenRepo) {
        this.refreshTokenRepo = refreshTokenRepo;
    }

    public String generateRefreshToken(Long userId) {
        RefreshToken refreshToken = this.saveRefreshToken(userId);
        return refreshToken.getToken();
    }

    private RefreshToken saveRefreshToken(Long userId) {
        RefreshToken result;
        return null;
    }
}
