package com.tmdt.group8.config.security;

import com.tmdt.group8.utils.TimeConverterUtils;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.security.Key;
import java.util.Date;

@Component
@Slf4j
public class JwtTokenProvider {
    @Value("${jwt.jwt-secret}")
    private String jwtSecret;

    @Value("${jwt.jwt-expiration}")
    private String jwtExpiration;

    public String generateJwtToken(String username) {
        Date currentDate = new Date();
        long jwtExpirationMs = TimeConverterUtils.getMillisecond(jwtExpiration);

        Date expireDate = new Date(currentDate.getTime() + jwtExpirationMs);

        return Jwts.builder()
                .setIssuer("product-portal-website")
                .setSubject(username)
                .setIssuedAt(new Date())
                .setExpiration(expireDate)
                .signWith(key())
                .compact();
    }

    public boolean validateToken(String authToken) {
        try {
            Jwts.parserBuilder().setSigningKey(key()).build().parse(authToken);
            return true;
        } catch (JwtException | IllegalArgumentException e) {
            log.error(e.getMessage());
        }
        return false;
    }

    private Key key() {
        return Keys.hmacShaKeyFor(
                Decoders.BASE64.decode(jwtSecret)
        );
    }
}
