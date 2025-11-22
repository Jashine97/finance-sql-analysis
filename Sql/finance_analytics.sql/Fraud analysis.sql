-- Overall fraud rate
SELECT 
    COUNT(*) AS total_txn,
    SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_txn,
    ROUND(100.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS fraud_rate_percent
FROM transactions;

-- Accounts with the highest number of fraud transactions
SELECT 
    a.account_id,
    c.first_name,
    c.last_name,
    COUNT(*) AS fraud_txn,
    ROUND(SUM(t.amount), 2) AS fraud_amount
FROM transactions t
JOIN accounts a   ON t.account_id = a.account_id
JOIN customers c  ON a.customer_id = c.customer_id
WHERE t.is_fraud = 1
GROUP BY a.account_id, c.first_name, c.last_name
ORDER BY fraud_txn DESC, fraud_amount DESC
LIMIT 10;

-- Merchant categories with most fraud
SELECT 
    m.category,
    COUNT(*) AS fraud_txn,
    ROUND(SUM(t.amount), 2) AS fraud_amount
FROM transactions t
JOIN merchants m ON t.merchant_id = m.merchant_id
WHERE t.is_fraud = 1
GROUP BY m.category
ORDER BY fraud_txn DESC;
