
-- Use the `ref` function to select from other models

select  
    ordered_date,
    sum(sales_revenue) as total_revenue
from {{ ref('t2_silver_table') }}
where order_date is not null
group by 1