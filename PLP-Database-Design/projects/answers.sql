CREATE TABLE payments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);


INSERT INTO payments (customer_name, payment_date, amount) VALUES
('Alice', '2024-03-01', 2000.00),
('Bob', '2024-03-01', 3000.00),
('Charlie', '2024-03-02', 1200.00),
('David', '2024-03-02', 2000.00),
('Emma', '2024-03-03', 3100.00),
('Frank', '2024-03-03', 3000.00);


SELECT check_number, MAX(amount) AS highest_payment
FROM payments
GROUP BY check_number;


CREATE TABLE orderdetails (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_code VARCHAR(50) NOT NULL,
    quantity_ordered INT NOT NULL,
    price_each DECIMAL(10,2) NOT NULL
);
INSERT INTO orderdetails (product_code, quantity_ordered, price_each) VALUES
('P001', 5, 100.00),
('P002', 3, 200.00),
('P001', 2, 100.00),
('P002', 4, 200.00),
('P003', 6, 150.00);

SELECT product_code, quantity_ordered, SUM(quantity_ordered * price_each) AS total_price
FROM orderdetails
GROUP BY product_code, quantity_ordered;



SELECT customer_name, country, AVG(credit_limit) AS average_credit_limit
FROM customers
GROUP BY customer_name, country;
