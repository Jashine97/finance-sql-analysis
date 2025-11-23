# Finance Transactions SQL Case Study

This project simulates a retail banking environment with customers, accounts, merchants and transactions (including fraud flags).  
All analysis is done in PostgreSQL using pgAdmin.

## Tables

- `customers` – basic customer info (city, segment)
- `accounts` – account-level data and balances
- `merchants` – merchant and category mapping
- `transactions` – 5,000 transactions with an `is_fraud` flag

## Example Questions Answered

1. Who are the top 10 spending customers?
2. Which merchant categories generate the most volume?
3. What is the overall fraud rate?
4. Which accounts and merchant categories are most affected by fraud?
5. How do different customer segments (Mass, HNW, Student) behave?


