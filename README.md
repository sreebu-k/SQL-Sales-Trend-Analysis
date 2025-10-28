To analyze monthly revenue and order volume from the online sales data to identify sales trends over time.

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

<img width="570" height="188" alt="image" src="https://github.com/user-attachments/assets/22d90b08-f334-45a7-86e8-69afd4bb7c1a" />


Explanation

YEAR(Date) and MONTH(Date) are used to extract the year and month from each order date.

SUM(Total Revenue) calculates the total sales revenue for each month.

COUNT(DISTINCT Transaction ID) counts the number of unique orders each month.

WHERE filters data for 2023–2024.

GROUP BY combines all sales data by month and year.

ORDER BY arranges the results in chronological order.

Outcome (In Simple Terms)

This query shows how monthly revenue and order counts changed over time between 2023 and 2024.
You can use it to:

Find which months had the highest sales.

Spot seasonal patterns or growth trends in orders and revenue.

    
