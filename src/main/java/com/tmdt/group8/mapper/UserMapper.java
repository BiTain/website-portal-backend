package com.tmdt.group8.mapper;

import com.tmdt.group8.dto.user.UserRequest;
import com.tmdt.group8.dto.user.UserResponse;
import com.tmdt.group8.entity.User;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface UserMapper extends GenericMapper<User, UserRequest, UserResponse> {
}
