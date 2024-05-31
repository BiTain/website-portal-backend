package com.tmdt.group8.utils;

import io.github.perplexhub.rsql.RSQLJPASupport;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.stream.Collectors;

public class SearchUtils {
    public static <T> Specification<T> pars(String search, List<String> searchFields) {
        if(search == null || search.isBlank() || searchFields == null || searchFields.size() == 0 ) {
            return RSQLJPASupport.toSpecification("");
        }
        return searchFields.stream()
                .map(field -> field + "=like='" + search.trim() + "'")
                .collect(Collectors.collectingAndThen(Collectors.joining(","), RSQLJPASupport::toSpecification));
    }
}
