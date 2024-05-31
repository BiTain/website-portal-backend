package com.tmdt.group8.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.tmdt.group8.constant.ResourceName;
import com.tmdt.group8.constant.SearchFields;
import com.tmdt.group8.dto.category.CategoryRequest;
import com.tmdt.group8.dto.category.CategoryResponse;
import com.tmdt.group8.dto.product.ProductRequest;
import com.tmdt.group8.dto.product.ProductResponse;
import com.tmdt.group8.dto.store.StoreRequest;
import com.tmdt.group8.dto.store.StoreResponse;
import com.tmdt.group8.dto.user.UserRequest;
import com.tmdt.group8.dto.user.UserResponse;
import com.tmdt.group8.entity.Category;
import com.tmdt.group8.entity.Product;
import com.tmdt.group8.entity.Store;
import com.tmdt.group8.entity.User;
import com.tmdt.group8.mapper.CategoryMapper;
import com.tmdt.group8.mapper.ProductMapper;
import com.tmdt.group8.mapper.StoreMapper;
import com.tmdt.group8.mapper.UserMapper;
import com.tmdt.group8.repository.CategoryRepo;
import com.tmdt.group8.repository.ProductRepo;
import com.tmdt.group8.repository.StoreRepo;
import com.tmdt.group8.repository.UserRepo;
import com.tmdt.group8.service.CrudService;
import com.tmdt.group8.service.GenericService;
import jakarta.annotation.PostConstruct;
import lombok.AllArgsConstructor;
import org.springframework.context.ApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;
import org.springframework.web.util.pattern.PathPatternParser;

import java.util.List;

@Component
@AllArgsConstructor
public class GenericMappingRegister {
    private ApplicationContext context;
    private RequestMappingHandlerMapping handlerMapping;

    // controllers
    private GenericController<UserRequest, UserResponse> userController;
    private GenericController<StoreRequest, StoreResponse> storeController;
    private GenericController<Object, ProductResponse> productController;
    private GenericController<CategoryRequest, CategoryResponse> categoryController;

    // services
    private GenericService<User, UserRequest, UserResponse> userService;
    private GenericService<Store, StoreRequest, StoreResponse> storeService;
    private GenericService<Product, Object, ProductResponse> productService;
    private GenericService<Category, CategoryRequest, CategoryResponse> categoryService;

    @PostConstruct
    public void registerControllers() throws NoSuchMethodException {

        register("users", userController, userService.init(
                context.getBean(UserRepo.class),
                context.getBean(UserMapper.class),
                null,
                ResourceName.USER
        ), UserRequest.class);

        register("stores", storeController, storeService.init(
                context.getBean(StoreRepo.class),
                context.getBean(StoreMapper.class),
                null,
                ResourceName.STORE
        ), StoreRequest.class);

        register("products", productController, productService.init(
                context.getBean(ProductRepo.class),
                context.getBean(ProductMapper.class),
                SearchFields.PRODUCT,
                ResourceName.PRODUCT
        ), Object.class);

        register("categories", categoryController, categoryService.init(
                context.getBean(CategoryRepo.class),
                context.getBean(CategoryMapper.class),
                null,
                ResourceName.CATEGORY
        ), CategoryRequest.class);
    }

    private <I, O> void register(
            String resource,
            GenericController<I, O> controller,
            CrudService<Long, I, O> service,
            Class<I> requestType
    ) throws NoSuchMethodException {
        RequestMappingInfo.BuilderConfiguration options = new RequestMappingInfo.BuilderConfiguration();
        options.setPatternParser(new PathPatternParser());

        controller.setCrudService(service);
        controller.setRequestType(requestType);

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/" + resource)
                        .methods(RequestMethod.GET)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("getAllResources", int.class, int.class,
                        String.class, String.class, String.class, boolean.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/" + resource + "/{id}")
                        .methods(RequestMethod.GET)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("getResource", Long.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/" + resource)
                        .methods(RequestMethod.POST)
                        .consumes(MediaType.APPLICATION_JSON_VALUE)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("createResource", JsonNode.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/" + resource + "/{id}")
                        .methods(RequestMethod.PUT)
                        .consumes(MediaType.APPLICATION_JSON_VALUE)
                        .produces(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("updateResource", Long.class, JsonNode.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/" + resource + "/{id}")
                        .methods(RequestMethod.DELETE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("deleteResource", Long.class)
        );

        handlerMapping.registerMapping(
                RequestMappingInfo.paths("/api/" + resource)
                        .methods(RequestMethod.DELETE)
                        .consumes(MediaType.APPLICATION_JSON_VALUE)
                        .options(options)
                        .build(),
                controller,
                controller.getClass().getMethod("deleteResources", List.class)
        );
    }
}
