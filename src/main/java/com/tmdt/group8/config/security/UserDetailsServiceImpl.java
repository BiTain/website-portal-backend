package com.tmdt.group8.config.security;

import com.tmdt.group8.entity.User;
import com.tmdt.group8.exception.AccountBlockedException;
import com.tmdt.group8.repository.UserRepo;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    private UserRepo userRepo;
    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException(username));

        if(!user.getEnabled()) {
            throw new AccountBlockedException("Tài khoaản của bạn đã bị khóa");
        }

        return MyUserDetails.build(user);
    }
}
