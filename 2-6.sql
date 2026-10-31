USE test_db;

-- 1. Tạo bảng orders (dùng số nhiều để tránh trùng từ khóa order)
CREATE TABLE orders1 (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- 2. Tạo bảng product
CREATE TABLE product (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- 3. Tạo bảng trung gian order_items
CREATE TABLE order_items (
    order_id VARCHAR(20),
    product_id VARCHAR(20),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders1(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);