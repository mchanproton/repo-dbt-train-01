
-- Use the `ref` function to select from other models

select  
    order_date AS order__date,
    sales AS sales_revenue
from {{ ref('my_first_dbt_model') }}
where order_date is not null 