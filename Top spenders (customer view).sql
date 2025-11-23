-- Top 10 customers by total transaction amount
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.segment,
    ROUND(SUM(t.amount), 2) AS total_spent,
    COUNT(t.transaction_id) AS txn_count
FROM customers c
JOIN accounts a   ON a.customer_id = c.customer_id
JOIN transactions t ON t.account_id = a.account_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.city, c.segment
ORDER BY total_spent DESC
LIMIT 10;
