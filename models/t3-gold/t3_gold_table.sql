
-- Use the `ref` function to select from other models

select  
    order__date,
    sum(sales_revenue) as total_revenue
from {{ ref('t2_silver_table') }}
group by 1
where order_date  is not null 