SELECT
    "Churn",
    AVG("MonthlyCharges") AS avg_monthly_charges
FROM
    wa_fn_usec
GROUP BY
    "Churn";

