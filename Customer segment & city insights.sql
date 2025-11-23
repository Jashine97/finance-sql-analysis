-- Spend by customer segment (Mass, HNW, Student, etc.)
SELECT 
    c.segment,
    COUNT(DISTINCT c.customer_id) AS customers,
    COUNT(t.transaction_id)       AS txn_count,
    ROUND(SUM(t.amount), 2)       AS total_amount,
    ROUND(AVG(t.amount), 2)       AS avg_txn_amount
FROM customers c
JOIN accounts a   ON a.customer_id = c.customer_id
JOIN transactions t ON t.account_id = a.account_id
GROUP BY c.segment
ORDER BY total_amount DESC;

-- Spend by city
SELECT 
    c.city,
    COUNT(DISTINCT c.customer_id) AS customers,
    COUNT(t.transaction_id)       AS txn_count,
    ROUND(SUM(t.amount), 2)       AS total_amount
FROM customers c
JOIN accounts a   ON a.customer_id = c.customer_id
JOIN transactions t ON t.account_id = a.account_id
GROUP BY c.city
ORDER BY total_amount DESC;
