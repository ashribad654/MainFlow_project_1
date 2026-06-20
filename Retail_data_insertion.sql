-- Insert categories
INSERT INTO categories (category_name, description) VALUES
('Electronics', 'Gadgets, phones, laptops and accessories'),
('Clothing', 'Men, women and children apparel'),
('Groceries', 'Daily essentials, food and beverages'),
('Furniture', 'Home and office furniture'),
('Sports', 'Sports equipment and outdoor gear');-- Insert customers
INSERT INTO customers (name, email, city, segment, join_date) VALUES
('Rahul Sharma', 'rahul@email.com', 'Mumbai', 'VIP', '2022-01-15'),
('Priya Singh', 'priya@email.com', 'Delhi', 'Premium', '2022-03-20'),
('Amit Patel', 'amit@email.com', 'Ahmedabad', 'Regular', '2022-06-10'),
('Sneha Rao', 'sneha@email.com', 'Bangalore', 'Premium', '2022-07-05'),
('Karan Mehta', 'karan@email.com', 'Mumbai', 'VIP', '2022-08-12'),
('Divya Nair', 'divya@email.com', 'Chennai', 'Regular', '2022-09-18'),
('Ravi Kumar', 'ravi@email.com', 'Delhi', 'Premium', '2023-01-22'),
('Anita Joshi', 'anita@email.com', 'Pune', 'Regular', '2023-02-14'),
('Suresh Gupta', 'suresh@email.com', 'Kolkata', 'VIP', '2023-04-30'),
-- Data Analysis with SQL Internship
('Meena Pillai', 'meena@email.com', 'Chennai', 'Regular', '2023-06-08');
-- Insert products
INSERT INTO products (product_name, category_id, unit_price, cost_price, stock_qty)
VALUES
('Samsung Galaxy S23', 1, 74999.00, 55000.00, 50),
('Apple MacBook Air M2', 1, 114999.00,88000.00, 25),
('Sony Wireless Earbuds', 1, 4999.00, 2500.00, 200),
('Cotton Formal Shirt', 2, 999.00, 400.00, 500),
('Denim Jeans Premium', 2, 2499.00, 900.00, 300),
('Basmati Rice 5kg', 3, 450.00, 300.00, 1000),
('Sunflower Oil 2L', 3, 280.00, 180.00, 800),
('Office Chair Ergonomic',4, 12999.00, 7000.00, 40),
('Wooden Study Table', 4, 18999.00, 11000.00, 20),
('Cricket Bat Kashmir Willow',5,2499.00,1200.00, 100),
('Yoga Mat Premium', 5, 1299.00, 600.00, 150),
('LG 32-inch Monitor', 1, 22999.00, 16000.00, 35);
-- Insert orders (across different months)
INSERT INTO orders (customer_id, order_date, city, status) VALUES
(1, '2023-01-05', 'Mumbai', 'Delivered'),
(2, '2023-01-18', 'Delhi', 'Delivered'),
(3, '2023-02-10', 'Ahmedabad', 'Delivered'),
(4, '2023-02-25', 'Bangalore', 'Delivered'),
(5, '2023-03-08', 'Mumbai', 'Delivered'),
(1, '2023-03-20', 'Mumbai', 'Delivered'),
(6, '2023-04-14', 'Chennai', 'Delivered'),
(7, '2023-05-02', 'Delhi', 'Delivered'),
(2, '2023-05-19', 'Delhi', 'Returned'),
(8, '2023-06-07', 'Pune', 'Delivered'),
(9, '2023-07-11', 'Kolkata', 'Delivered'),
(10,'2023-08-23', 'Chennai', 'Delivered'),
(3, '2023-09-14', 'Ahmedabad', 'Delivered'),
(5, '2023-10-05', 'Mumbai', 'Delivered'),
(4, '2023-11-18', 'Bangalore', 'Delivered'),
(1, '2023-12-01', 'Mumbai', 'Delivered');
-- Insert order_items
INSERT INTO order_items (order_id, product_id, quantity, unit_price, discount) VALUES
(1, 1, 1, 74999.00, 0.05),(1, 3, 2, 4999.00, 0.00),
(2, 4, 3, 999.00, 0.10),(2, 5, 2, 2499.00, 0.05),
(3, 6,10, 450.00, 0.00),(3, 7, 5, 280.00, 0.00),
(4, 8, 1, 12999.00, 0.08),(4, 9, 1, 18999.00, 0.05),
(5, 2, 1,114999.00, 0.03),(5,11, 2, 1299.00, 0.00),
(6, 10, 2, 2499.00, 0.00),(6, 3, 1, 4999.00, 0.10),
(7, 4, 5, 999.00, 0.15),(7, 6,20, 450.00, 0.05),
(8, 12, 1, 22999.00, 0.05),(8, 3, 3, 4999.00, 0.00),
(9, 5, 2, 2499.00, 0.00),(10,1, 1, 74999.00, 0.02),
(11, 9, 1, 18999.00, 0.00),(11,8, 2, 12999.00, 0.10),
(12,11, 3, 1299.00, 0.05),(12,6,15, 450.00, 0.00),
(13, 2, 1,114999.00, 0.08),(13,4, 2, 999.00, 0.00),
(14,10, 1, 2499.00, 0.00),(14,7,10, 280.00, 0.05),
(15, 1, 2, 74999.00, 0.04),(15,3, 4, 4999.00, 0.00),
(16, 2, 1,114999.00, 0.06),(16,5, 3, 2499.00, 0.10);

