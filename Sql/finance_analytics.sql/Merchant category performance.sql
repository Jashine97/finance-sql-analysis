-- Total volume per merchant category
SELECT 
    m.category,
    COUNT(t.transaction_id) AS txn_count,
    ROUND(SUM(t.amount), 2) AS total_amount,
    ROUND(AVG(t.amount), 2) AS avg_amount
FROM merchants m
JOIN transactions t ON t.merchant_id = m.merchant_id
GROUP BY m.category
ORDER BY total_amount DESC;
