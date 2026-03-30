with

customers as (

    select * from {{ ref('stg_ventas') }}

)
select * from customers
