INSERT INTO customers (name, email)
VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Alice Smith', 'alice.smith@example.com'),
    ('Bob Johnson', 'bob.johnson@example.com'),
    ('Emily Brown', 'emily.brown@example.com'),
    ('Michael Davis', 'michael.davis@example.com'),
    ('Sarah Wilson', 'sarah.wilson@example.com'),
    ('David Taylor', 'david.taylor@example.com'),
    ('Jennifer Clark', 'jennifer.clark@example.com'),
    ('Christopher Martinez', 'christopher.martinez@example.com'),
    ('Jessica Rodriguez', 'jessica.rodriguez@example.com');

INSERT INTO orders (customer_id, order_date, amount)
VALUES
    (1, '2024-01-03', 204.00),
    (1, '2024-01-04', 53.75),
    (1, '2024-01-05', 301.00),
    (1, '2024-05-01', 190.50),
    (2, '2024-05-02', 75.20),
    (3, '2024-05-03', 200.00),
    (4, '2024-05-04', 50.75),
    (5, '2024-05-05', 300.00),
    (1, '2024-05-06', 150.99),
    (2, '2024-05-07', 80.25),
    (3, '2024-05-08', 400.50),
    (4, '2024-05-09', 250.75),
    (1, '2024-05-10', 150.00),
    (2, '2024-05-11', 200.00),
    (3, '2024-05-12', 175.50),
    (4, '2024-05-13', 90.25),
    (5, '2024-05-14', 220.00),
    (6, '2024-05-15', 125.00),
    (7, '2024-05-16', 180.00),
    (8, '2024-05-17', 210.50),
    (9, '2024-05-18', 150.75),
    (10, '2024-05-19', 95.00),
    (6, '2024-05-20', 200.00),
    (7, '2024-05-21', 150.00),
    (8, '2024-05-22', 100.50),
    (9, '2024-05-23', 80.20),
    (10, '2024-05-24', 300.00);


INSERT INTO products (name, price)
VALUES
    ('Smartphone', 599.99),
    ('Laptop', 1299.99),
    ('Headphones', 99.99),
    ('Tablet', 499.99),
    ('Smartwatch', 199.99);

INSERT INTO order_items (order_id, product_id, quantity)
VALUES
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 2),
    (4, 4, 1),
    (5, 5, 1),
    (6, 1, 1),
    (7, 2, 1),
    (8, 3, 2),
    (9, 4, 1),
    (10, 1, 1),
    (11, 2, 1),
    (12, 3, 1),
    (13, 4, 1),
    (14, 5, 1),
    (15, 1, 1),
    (16, 2, 1),
    (17, 3, 2),
    (18, 4, 1),
    (19, 1, 1),
    (20, 2, 1),
    (21, 3, 1),
    (22, 4, 1),
    (23, 5, 1),
    (24, 1, 1);
    

INSERT INTO users (username)
VALUES
    ('satanicFrost'),
    ('ravendark'),
    ('shadowthrone'),
    ('darkmoon'),
    ('blasphemystorm'),
    ('necrodaemon'),
    ('eternalnightmare'),
    ('grimnocturne'),
    ('demonlord'),
    ('bloodthirster');

INSERT INTO employees (name, manager_id)
VALUES
    ('John Manager', NULL),
    ('Alice Supervisor', 1),
    ('Bob Supervisor', 1),
    ('Emily Associate', 2),
    ('Michael Associate', 3),
    ('Sarah Associate', 4),
    ('David Associate', 5),
    ('Jennifer Associate', 6),
    ('Christopher Associate', 7),
    ('Jessica Associate', 8);