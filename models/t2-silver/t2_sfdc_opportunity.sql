{{ config(materialized='table') }}

with source as (

    select * 
    from {{ source('salesforce_raw', 't1_sfdc_oppty') }}
    where is_deleted = false

),

renamed as (

    select
        opportunity_id,
        account_id,
        opportunity_name,
        stage_name,
        amount,
        close_date,
        created_date,
        is_won,
        is_closed,

        -- derived fields
        case
            when stage_name in ('Closed Won', 'Closed Lost') then 'Closed'
            when stage_name in ('Negotiation/Review', 'Proposal/Price Quote') then 'Late Stage'
            when stage_name in ('Needs Analysis', 'Qualification') then 'Mid Stage'
            else 'Early Stage'
        end as pipeline_stage_group,

        datediff(close_date, created_date) as days_to_close,

        _loaded_at

    from source

)

select * from renamed