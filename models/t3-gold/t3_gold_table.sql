select  
    ordered_date,
    sum(sales_revenue) as total_revenue
from {{ ref('t2_silver_table') }}
where ordered_date is not null
group by 1