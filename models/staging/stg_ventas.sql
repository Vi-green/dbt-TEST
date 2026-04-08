with

source as (
    select * from {{ source('ventas', 'ventas') }}

),

renamed as (

    select

        ----------  ids
        cod_cliente as customer_id,

        ---------- text
        cliente as nombre_fantasia_test 
    from source

)

select * from renamed
