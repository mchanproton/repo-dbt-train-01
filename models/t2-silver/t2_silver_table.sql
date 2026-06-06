
-- Use the `ref` function to select from other models

select  
    order_date AS ordered_date,
    sales AS sales_revenue
from {{ ref('t1_bronze_table') }}
where order_date is not null 