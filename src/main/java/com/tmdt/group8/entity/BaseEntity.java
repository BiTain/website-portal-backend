package com.tmdt.group8.entity;

import com.tmdt.group8.utils.SecurityUtils;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;

@Getter
@Setter
@MappedSuperclass
public class BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreationTimestamp
    @Column(updatable = false, nullable = false)
    private Date createdAt = new Date();

    @Column(updatable = false) // nullable = false)
    private Long createdBy;

    private Date updatedAt;
    private Long updatedBy;

//    @PrePersist
//    public void onPersist() {
//        this.setCreatedBy(SecurityUtils.getCurrentUserDetails().getId());
//    }

//    @PreUpdate
//    public void onUpdate() {
//        this.setUpdatedAt(new Date());
//        this.setUpdatedBy(SecurityUtils.getCurrentUserDetails().getId());
//    }
}