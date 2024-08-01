SELECT
    "gender",
    COUNT("customerID") AS total_customers,
    SUM(CASE WHEN "Churn" = '1' THEN 1 ELSE 0 END) AS churned_customers,
    (SUM(CASE WHEN "Churn" = '1' THEN 1 ELSE 0 END) / CAST(COUNT("customerID") AS FLOAT)) * 100 AS churn_rate
FROM
    wa_fn_usec
GROUP BY
    "gender";
