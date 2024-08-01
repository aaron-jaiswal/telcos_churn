Select "Churn", avg("tenure") as avg_tenure
From wa_fn_usec
Group by "Churn";