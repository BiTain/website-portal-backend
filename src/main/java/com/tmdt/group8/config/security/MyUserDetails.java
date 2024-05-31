package com.tmdt.group8.config.security;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;
import java.util.List;

@Setter
@Getter
public class MyUserDetails extends User {
    private Long id;
    public MyUserDetails(Long id, String username, String password, boolean enabled,
                         boolean accountNonExpired, boolean credentialsNonExpired,
                         boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
        this.id = id;
    }

    public static MyUserDetails build(com.tmdt.group8.entity.User user) {
        String role = user.getRole().toString();
        List<GrantedAuthority> authorities = List.of(
                new SimpleGrantedAuthority(role)
        );
        return new MyUserDetails(
                user.getId(),
                user.getUsername(),
                user.getPassword(),
                user.getEnabled(),
                true,
                true,
                true,
                authorities
        );
    }
}
