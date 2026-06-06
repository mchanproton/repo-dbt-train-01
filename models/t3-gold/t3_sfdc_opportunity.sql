{{ config(materialized='table') }}

with opportunity as (

    select
        opportunity_id,
        account_id,
        opportunity_name,
        stage_name,
        pipeline_stage_group,
        amount,
        close_date,
        created_date,
        is_won,
        is_closed,
        days_to_close,
        _loaded_at

    from {{ ref('t2_sfdc_opportunity') }}

)

select * from opportunity