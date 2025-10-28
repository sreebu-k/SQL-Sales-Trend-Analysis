CREATE DATABASE sales_analysis;

USE sales_analysis;

SELECT * FROM sales_analysis.`online sales data`;

SELECT
    YEAR(Date) AS order_year,
    MONTH(Date) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM
    `online sales data`
WHERE
    Date BETWEEN '2023-01-01' AND '2024-12-31'
GROUP BY
    YEAR(Date), MONTH(Date)
ORDER BY
    order_year ASC, order_month ASC;