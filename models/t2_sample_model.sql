{{ 
  config(
    materialized = 'table'
  ) 
}}

-- Select every column from the staging customers table
select
  *
from
  {{ source('jaffleshop', 'stg_customers') }}
