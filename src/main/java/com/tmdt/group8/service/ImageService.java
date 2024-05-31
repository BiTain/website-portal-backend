package com.tmdt.group8.service;

import org.springframework.web.multipart.MultipartFile;

public interface ImageService {
    String store(MultipartFile file);
    boolean delete(String url);
}
