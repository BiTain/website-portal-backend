package com.tmdt.group8.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.tmdt.group8.constant.AppConstants;
import com.tmdt.group8.dto.ListResponse;
import com.tmdt.group8.service.CrudService;
import jakarta.annotation.Nullable;
import lombok.Setter;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Component
@Setter
@Scope("prototype")
public class GenericController<I, O> {
    private CrudService<Long, I, O> crudService;
    private Class<I> requestType;

    public ResponseEntity<ListResponse<O>> getAllResources(
            @RequestParam(name = "page", defaultValue = AppConstants.DEFAULT_PAGE_NUMBER) int page,
            @RequestParam(name = "size", defaultValue = AppConstants.DEFAULT_PAGE_SIZE) int size,
            @RequestParam(name = "sort", defaultValue = AppConstants.DEFAULT_SORT) String sort,
            @RequestParam(name = "filter", required = false) @Nullable String filter,
            @RequestParam(name = "search", required = false) @Nullable String search,
            @RequestParam(name = "all", required = false) boolean all
    ) {
        return ResponseEntity.ok(
                crudService.findAll(page, size, sort, filter, search, all)
        );
    }

    public ResponseEntity<O> getResource(@PathVariable("id") Long id) {
        return ResponseEntity.ok(crudService.findById(id));
    }

    public ResponseEntity<O> createResource(@RequestBody JsonNode request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(crudService.save(request, requestType));
    }

    public  ResponseEntity<O> updateResource(@PathVariable("id") Long id, @RequestBody JsonNode request) {
        return ResponseEntity.ok(crudService.save(id, request, requestType));
    }

    public ResponseEntity<Void> deleteResource(@PathVariable("id") Long id) {
        crudService.delete(id);
        return ResponseEntity.noContent().build();
    }

    public ResponseEntity<Void> deleteResources(@RequestBody List<Long> ids) {
        crudService.delete(ids);
        return ResponseEntity.noContent().build();
    }
}
