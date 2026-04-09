-- Revenue by channel
SELECT sales_channel, SUM(amount)
FROM clinic_sales
GROUP BY sales_channel;

-- Profit/Loss
SELECT 
    s.month,
    SUM(s.amount) - SUM(e.amount) AS profit
FROM clinic_sales s
JOIN expenses e ON s.month = e.month
GROUP BY s.month;