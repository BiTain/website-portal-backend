package com.tmdt.group8.mapper;

import com.tmdt.group8.dto.product.ProductRequest;
import com.tmdt.group8.dto.product.ProductResponse;
import com.tmdt.group8.entity.Image;
import com.tmdt.group8.entity.Product;
import com.tmdt.group8.entity.UrlProduct;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", uses = {StoreMapper.class})
public interface ProductMapper extends GenericMapper<Product, Object, ProductResponse> {

    @Override
    @Mapping(source = "category.name", target = "category")
    @Mapping(source = "store", target = "storeOwner")
    @Mapping(target = "productUrls", qualifiedByName = "getStringProductUrls")
    @Mapping(target = "productImages", qualifiedByName = "getProductImages")
    @Mapping(source = "category.id", target = "categoryId")
    ProductResponse entityToResponse(Product entity);

    @Named("getStringProductUrls")
    static List<String> convert(List<UrlProduct> in) {
        return in.stream().map(item -> item.getUrl()).collect(Collectors.toList());
    }

    @Named("getProductImages")
    static List<String> getProductImages(List<Image> in) {
        return in.stream().map(item -> item.getUrl()).collect(Collectors.toList());
    }
}
