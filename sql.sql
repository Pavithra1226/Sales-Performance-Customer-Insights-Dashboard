-- Preview Sales Data
SELECT * FROM sales_data LIMIT 10;

-- Calculate Total Revenue
SELECT SUM(total) AS total_revenue
FROM sales_data;

-- Revenue by Product Line
SELECT product_line, SUM(total) AS total_sales
FROM sales_data
GROUP BY product_line
ORDER BY total_sales DESC;

-- Revenue by Hour (Rush Hour Analysis)
SELECT hour, SUM(total) AS total_sales
FROM sales_data
GROUP BY hour
ORDER BY total_sales DESC;

-- Daily Sales Trend
SELECT date, SUM(total) AS total_sales
FROM sales_data
GROUP BY date
ORDER BY date;

-- Monthly Revenue Performance
SELECT DATE_TRUNC('month', TO_DATE(date, 'MM/DD/YYYY')) AS month,
       SUM(total) AS total_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top 5 Customer Types by Revenue
SELECT customer_type,
       SUM(total) AS total_spent
FROM sales_data
GROUP BY customer_type
ORDER BY total_spent DESC
LIMIT 5;

-- Payment Method Popularity
SELECT payment, COUNT(*) AS total_transactions,
       SUM(total) AS total_revenue
FROM sales_data
GROUP BY payment
ORDER BY total_transactions DESC;

-- Branch-wise Revenue Analysis
SELECT branch,
       SUM(total) AS total_revenue,
       COUNT(invoice_id) AS total_orders
FROM sales_data
GROUP BY branch
ORDER BY total_revenue DESC;

-- Determine Rush Hours (Avg Sale per Transaction + Revenue)
SELECT hour,
       ROUND(CAST(AVG(total) AS NUMERIC), 2) AS avg_order_value,
       SUM(total) AS total_revenue
FROM sales_data
GROUP BY hour
ORDER BY total_revenue DESC;

-- Sales Growth Month-over-Month
SELECT TO_CHAR(month, 'YYYY-MM') AS month,
       total_revenue,
       previous_month,
       growth_percentage
FROM (
    SELECT month,
           total_revenue,
           LAG(total_revenue) OVER (ORDER BY month) AS previous_month,
           ROUND(
                (
                    (total_revenue - LAG(total_revenue) OVER (ORDER BY month))::numeric /
                    NULLIF(LAG(total_revenue) OVER (ORDER BY month), 0)::numeric
                ) * 100,
                2
           ) AS growth_percentage
    FROM (
        SELECT DATE_TRUNC('month', TO_DATE(date, 'MM/DD/YYYY')) AS month,
               SUM(total)::numeric AS total_revenue
        FROM sales_data
        GROUP BY month
    ) t
) final
ORDER BY month;
