-- 1. Basic counts
SELECT COUNT(*) AS customers   FROM customers;
SELECT COUNT(*) AS accounts    FROM accounts;
SELECT COUNT(*) AS merchants   FROM merchants;
SELECT COUNT(*) AS transactions FROM transactions;

-- 2. Sample data from each table
SELECT * FROM customers    LIMIT 5;
SELECT * FROM accounts     LIMIT 5;
SELECT * FROM merchants    LIMIT 5;
SELECT * FROM transactions LIMIT 5;
