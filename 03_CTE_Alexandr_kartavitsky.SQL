--CTE 1
    WITH CustomerOrders AS (
    SELECT c.name AS customer_name, COUNT(o.order_id) AS order_count
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name
    HAVING COUNT(o.order_id) >= 5
)
SELECT customer_name, order_count
FROM CustomerOrders; 



--CTE 2
WITH PopularProducts AS (
    SELECT product_id, COUNT(*) AS order_count
    FROM order_items
    GROUP BY product_id
    HAVING COUNT(*) > 10
),
ProductRevenue AS (
    SELECT oi.product_id, SUM(oi.quantity * p.price) AS total_revenue
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY oi.product_id
)
SELECT p.name AS product_name, pr.total_revenue
FROM ProductRevenue pr
JOIN products p ON pr.product_id = p.product_id;



--CTE 3
WITH NormalizedUsers AS (
    SELECT username AS original_name, INITCAP(username) AS normalized_name
    FROM users
)
SELECT original_name, normalized_name
FROM NormalizedUsers;



--CTE 4
WITH RECURSIVE OrganizationChart AS (
    SELECT 
        employee_id,
        name,
        manager_id,
        0 AS level
    FROM employees
    WHERE manager_id IS NULL 

    UNION ALL

    SELECT 
        e.employee_id,
        e.name,
        e.manager_id,
        oc.level + 1
    FROM employees e
    INNER JOIN OrganizationChart oc ON e.manager_id = oc.employee_id
)
SELECT 
    LPAD('', level * 4, ' ') || name AS indented_name, 
    level
FROM OrganizationChart
ORDER BY level, employee_id;

--CTE 5
WITH RECURSIVE Fibonacci AS (
    SELECT
        0 AS n,
        0 AS fib_n_minus_1,
        1 AS fib_n
    UNION ALL
    SELECT
        n + 1,
        fib_n,
        fib_n + fib_n_minus_1
    FROM Fibonacci
    WHERE n < 9
)
SELECT fib_n AS fibonacci_number
FROM Fibonacci;
