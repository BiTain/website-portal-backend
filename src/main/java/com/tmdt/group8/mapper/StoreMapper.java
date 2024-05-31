package com.tmdt.group8.mapper;

import com.tmdt.group8.dto.store.StoreRequest;
import com.tmdt.group8.dto.store.StoreResponse;
import com.tmdt.group8.entity.Image;
import com.tmdt.group8.entity.Store;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring")
public interface StoreMapper extends GenericMapper<Store, StoreRequest, StoreResponse> {
    @Override
    @Mapping(source = "user", target = "owner")
    @Mapping(source = "images", target = "imageUrls", qualifiedByName = "imagesToImageUrls")
    StoreResponse entityToResponse(Store entity);

    @Named("imagesToImageUrls")
    static List<String> imagesToImageUrls(List<Image> images) {
        return images.stream().map(item -> item.getUrl()).collect(Collectors.toList());
    }
}
