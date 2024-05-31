package com.tmdt.group8.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BaseResponse {
    private Long id;
    private Date createdAt;
    private Date updatedAt;
}
