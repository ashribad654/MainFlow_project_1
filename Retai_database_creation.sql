-- Step 1: Create and select the database
CREATE DATABASE IF NOT EXISTS quickmart_db;
USE quickmart_db;
-- Table 1: customers
CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
city VARCHAR(50),
segment VARCHAR(30), -- 'Regular', 'Premium', 'VIP'
join_date DATE
);
-- Table 2: categories
CREATE TABLE categories (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(50) NOT NULL,
description VARCHAR(200)
);
-- Table 3: products
CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(150) NOT NULL,
category_id INT,
unit_price DECIMAL(10,2),
cost_price DECIMAL(10,2),
stock_qty INT DEFAULT 0,
FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
-- Table 4: orders
CREATE TABLE orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_date DATE NOT NULL,
city VARCHAR(50),
status VARCHAR(20) DEFAULT 'Delivered',
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- Table 5: order_items
CREATE TABLE order_items (
item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
product_id INT,
quantity INT NOT NULL,
unit_price DECIMAL(10,2),
discount DECIMAL(4,2) DEFAULT 0.00,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
