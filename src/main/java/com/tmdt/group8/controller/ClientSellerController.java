package com.tmdt.group8.controller;

import com.cloudinary.Cloudinary;
import com.tmdt.group8.dto.ApiResponse;
import com.tmdt.group8.dto.product.ProductRequest;
import com.tmdt.group8.dto.store.StoreResponse;
import com.tmdt.group8.dto.user.SellerRegisterRequest;
import com.tmdt.group8.dto.user.UserRequest;
import com.tmdt.group8.entity.*;
import com.tmdt.group8.repository.*;
import com.tmdt.group8.utils.CloudinaryUtils;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RequestMapping("/api/sellers")
@AllArgsConstructor
@RestController
public class ClientSellerController {   
    private UserRepo userRepo;
    private StoreRepo storeRepo;
    private ImageRepo imageRepo;
    private ProductRepo productRepo;
    private CategoryRepo categoryRepo;
    private PasswordEncoder passwordEncoder;
    private UrlProductRepo urlProductRepo;


    @PutMapping("/active/{sellerId}")
    public ResponseEntity<ApiResponse> activeSeller(@PathVariable("sellerId") Long uId2,
                                                    @RequestBody Long uId) {
        User u = userRepo.findById(uId).get();

        u.setEnabled(!u.getEnabled());

        userRepo.save(u);

        return ResponseEntity.ok(ApiResponse.builder().statusCode(200).message("Chuyển trạng thái thành công").build());

    }


    @PostMapping("/register")
    public ResponseEntity<ApiResponse> sellerRegister(@RequestBody SellerRegisterRequest registerRequest) {
        try {
            User user = new User();
            user.setFullName(registerRequest.getFullName());
            user.setEmail(registerRequest.getEmail());
            user.setPhoneNumber(registerRequest.getPhoneNumber());
            user.setEnabled(false);
            user.setAvatar(registerRequest.getAvatar());
            user.setRole(RoleType.SELLER);
            user.setPassword(passwordEncoder.encode("1234"));
            user.setUsername(registerRequest.getEmail());

            User savedUser = userRepo.save(user);

            Store store = new Store();
            store.setUrlStore(registerRequest.getUrlStore());
            store.setName(registerRequest.getStoreName());
            store.setUser(savedUser);

            Store savedStore = storeRepo.save(store);

            List<Image> images = registerRequest.getStoreImages().stream().map(imageUrl -> {
                Image image = new Image();
                image.setStore(savedStore);
                image.setUrl(imageUrl);
                return image;
            }).collect(Collectors.toList());

            imageRepo.saveAll(images);

            return ResponseEntity.ok(ApiResponse.builder().statusCode(200).message("Đăng ký thành công").build());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @PostMapping("/add-product")
    public ResponseEntity<ApiResponse> sellerAddProduct(@RequestBody ProductRequest productRequest) {
        try {
            Product product = new Product();
            product.setName(productRequest.getName());
            product.setPrice(productRequest.getPrice());
            Category category = categoryRepo.findById(productRequest.getCategoryId()).get();
            product.setCategory(category);
            List<Store> stores = storeRepo.findByUserId(productRequest.getUserId());
            product.setCreatedBy(productRequest.getUserId());
            product.setStore(stores.get(0));

            Product productSaved = productRepo.save(product);

            UrlProduct urlProduct = new UrlProduct();
            urlProduct.setProduct(productSaved);
            urlProduct.setUrl(productRequest.getProductUrl());

            UrlProduct savedUrlProduct = urlProductRepo.save(urlProduct);


            List<Image> images = productRequest.getProductImages().stream().map(imageUrl -> {
                Image image = new Image();
                image.setProduct(productSaved);
                image.setUrl(imageUrl);
                return image;
            }).collect(Collectors.toList());

            imageRepo.saveAll(images);

            return ResponseEntity.ok(ApiResponse.builder().statusCode(200).message("Tạo thành công").build());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @PutMapping("/update-product/{productId}")
    public ResponseEntity<ApiResponse> sellerUpdateProduct(@PathVariable("productId") Long productId,
                                                           @RequestBody ProductRequest productRequest) {
        try {
            Product product = productRepo.findById(productId).get();
            product.setName(productRequest.getName());
            product.setPrice(productRequest.getPrice());
            Category category = categoryRepo.findById(productRequest.getCategoryId()).get();
            product.setCategory(category);
            Product productSaved = productRepo.save(product);

            UrlProduct urlProduct = urlProductRepo.findByProductId(productSaved.getId()).get(0);
            urlProduct.setUrl(productRequest.getProductUrl());

            urlProductRepo.save(urlProduct);

            List<Image> images = imageRepo.findByProductId(productSaved.getId());
            imageRepo.deleteAll(images);

            List<Image> newImages = productRequest.getOldImage().stream().map(imageUrl -> {
                Image image = new Image();
                image.setProduct(productSaved);
                image.setUrl(imageUrl);
                return image;
            }).collect(Collectors.toList());

            productRequest.getProductImages().stream().forEach(value -> {
                Image image = new Image();
                image.setProduct(productSaved);
                image.setUrl(value);

                newImages.add(image);
            });

            imageRepo.saveAll(newImages);

            return ResponseEntity.ok(ApiResponse.builder().statusCode(200).message("Tạo thành công").build());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @PutMapping("/update-info/{uId}")
    public ResponseEntity<ApiResponse> updateInfo(
            @PathVariable("uId") Long userId,
            @RequestBody UserRequest uRequest) {
        User u = userRepo.findById(userId).get();

        u.setFullName(uRequest.getFullName());
        u.setUsername(uRequest.getUsername());
        u.setPhoneNumber(uRequest.getPhoneNumber());
        u.setEmail(uRequest.getEmail());

        if(uRequest.getPassword() != null){
            u.setPassword(passwordEncoder.encode(uRequest.getPassword()));
        }

        userRepo.save(u);


        return ResponseEntity.ok(ApiResponse.builder().statusCode(200).message("Update thành công").build());

    }

}
