package com.tmdt.group8.service.impl;

import com.tmdt.group8.service.ImageService;
import com.tmdt.group8.utils.CloudinaryUtils;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
@AllArgsConstructor
public class ImageServiceImpl implements ImageService {

    private CloudinaryUtils cloudinary;

    @Override
    public String store(MultipartFile file) {
        try {
            return cloudinary.upload(file, "general");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean delete(String url) {
        return cloudinary.delete(url);
    }
}
