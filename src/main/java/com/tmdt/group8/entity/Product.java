package com.tmdt.group8.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Entity
@Getter
@Setter
public class Product extends BaseEntity {
    private String name;
    private double price;
    private String slug;

    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id", nullable = false)
    private Category category;

    @ManyToOne
    @JoinColumn(name = "store_id", referencedColumnName = "id", nullable = false)
    private Store store;

    @OneToMany(mappedBy = "product",cascade = CascadeType.ALL)
    private List<UrlProduct> productUrls;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<Image> productImages;

}
