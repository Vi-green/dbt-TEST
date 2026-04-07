with

source as (

    -- {# This references seed (CSV) data - try switching to {{ source('ecom', 'raw_customers') }} #}
    select * from {{ source('ventas', 'ventas') }}

),

renamed as (

    select

        ----------  ids
        cod_cliente as customer_id,

        ---------- text
        cliente as nombre_fantasia

    from source

)

select * from renamed
