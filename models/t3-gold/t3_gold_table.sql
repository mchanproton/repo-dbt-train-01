
-- Use the `ref` function to select from other models

select  
    sum(sales_revenue) as total_revenue 
    order__date
from {{ ref('t2_silver_table') }}
group by 2 
where order_date  is not null 