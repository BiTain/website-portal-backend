package com.tmdt.group8.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tmdt.group8.dto.ListResponse;
import com.tmdt.group8.exception.ResourceNotFoundException;
import com.tmdt.group8.mapper.GenericMapper;
import com.tmdt.group8.utils.SearchUtils;
import io.github.perplexhub.rsql.RSQLJPASupport;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface CrudService<Id, I, O> {
    ListResponse<O> findAll(int page, int size, String sort, String filter, String search, boolean all);

    O findById(Id id);

    O save(I request);

    O save(Id id, I request);

    void delete(Id id);

    void delete(List<Id> ids);

    default <E> ListResponse<O> defaultFindAll(
            int pageNumber,
            int size,
            String sort,
            String filter,
            String search,
            boolean all,
            List<String> searchFields,
            JpaSpecificationExecutor<E> repository,
            GenericMapper<E, I, O> mapper
    ) {
        Specification<E> sortable = RSQLJPASupport.toSort(sort);
        Specification<E> filterable = RSQLJPASupport.toSpecification(filter);
        Specification<E> searchable = SearchUtils.pars(search, searchFields);
        Pageable pageable = all ? Pageable.unpaged() : PageRequest.of(pageNumber - 1, size);
        Page<E> page = repository.findAll(sortable.and(filterable).and(searchable), pageable);
        List<E> entities = page.getContent();
        List<O> entityResponses = mapper.entityToResponse(entities);
        return ListResponse.of(entityResponses, page);
    }

    default <E> O defaultFindById(Id id,
                                  JpaRepository<E, Id> repository,
                                  GenericMapper<E, I, O> mapper,
                                  String resourceName) {
        return repository.findById(id)
                .map(mapper::entityToResponse)
                .orElseThrow(() -> new ResourceNotFoundException(resourceName, "id", id));
    }

    default <E> O defaultSave(
            I request,
            JpaRepository<E, Id> repository,
            GenericMapper<E, I, O> mapper
    ) {
        E entity = mapper.requestToEntity(request);
        entity = repository.save(entity);
        return mapper.entityToResponse(entity);
    }

    default <E> O defaultSave(
            Id id,
            I request,
            JpaRepository<E, Id> repository,
            GenericMapper<E, I, O> mapper,
            String resourceName
    ) {
        return repository.findById(id)
                .map(existingEntity -> mapper.partialUpdate(existingEntity, request))
                .map(repository::save)
                .map(mapper::entityToResponse)
                .orElseThrow(() -> new ResourceNotFoundException(resourceName, "id", id));
    }

    default O save(Id id, JsonNode request, Class<I> requestType) {
        ObjectMapper mapper = new ObjectMapper();
        I typedRequest = mapper.convertValue(request, requestType);
        return this.save(id, typedRequest);
    }

    default O save(JsonNode request, Class<I> requestType) {
        ObjectMapper mapper = new ObjectMapper();
        I typedRequest = mapper.convertValue(request, requestType);
        return this.save(typedRequest);
    }
}
