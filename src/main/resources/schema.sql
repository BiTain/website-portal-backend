DROP DATABASE IF EXISTS product_portal;
CREATE DATABASE product_portal;

use product_portal;

-- Create tables
CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    phone_number VARCHAR(255),
    avatar VARCHAR(255),
    enabled bit(1),
    role VARCHAR(45),
    created_at DATETIME,
    updated_at DATETIME,
    created_by BIGINT,
    updated_by BIGINT
);

CREATE TABLE store (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    url_store VARCHAR(255),
    user_id BIGINT,
    created_at DATETIME,
    updated_at DATETIME NULL,
    created_by BIGINT,
    updated_by BIGINT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE category (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    image VARCHAR(255) NULL,
    enabled bit(1),
    parent_id BIGINT NULL,
    created_at DATETIME,
    updated_at DATETIME,
    created_by BIGINT,
    updated_by BIGINT,
    FOREIGN KEY (parent_id) REFERENCES category(id)
);

CREATE TABLE product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DOUBLE,
    slug VARCHAR(255),
    category_id BIGINT,
    store_id BIGINT,
    created_at DATETIME,
    updated_at DATETIME,
    created_by BIGINT,
    updated_by BIGINT,
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (store_id) REFERENCES store(id)
);

CREATE TABLE image (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    url text,
    product_id BIGINT,
    store_id BIGINT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (store_id) REFERENCES store(id)
);

CREATE TABLE comment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    reply VARCHAR(255),
    product_id BIGINT,
    user_id BIGINT,
    parent_comment_id BIGINT NULL,
    created_at DATETIME,
    updated_at DATETIME,
    created_by BIGINT,
    updated_by BIGINT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (parent_comment_id) REFERENCES comment(id)
);

CREATE TABLE url_product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    url text,
    product_id BIGINT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);
