
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select '2025-01-01' as order_date, 
           111 as sales
    union all
    select '2025-01-02' as order_date, 
           112 as sales

)

select *
from source_data

