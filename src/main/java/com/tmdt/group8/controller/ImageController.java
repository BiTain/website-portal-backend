package com.tmdt.group8.controller;

import com.tmdt.group8.service.ImageService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@AllArgsConstructor
@RestController
@RequestMapping("/api/images")
public class ImageController {

    private ImageService imageService;

    @PostMapping("/upload-single")
    public ResponseEntity<Map<String, String>> upload(@RequestParam("image") MultipartFile file) {
        return ResponseEntity.ok(Map.of("imageUrl", imageService.store(file)));
    }

    @PostMapping("/upload-multiple")
    public ResponseEntity<Map<String, List<String>>> uploads(@RequestParam("images") MultipartFile[] file) {
        List<String> urls = Stream.of(file).map(imageService::store).collect(Collectors.toList());
        return ResponseEntity.ok(Map.of("imageUrls", urls));
    }
}
