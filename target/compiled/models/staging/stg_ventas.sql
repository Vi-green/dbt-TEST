with

source as (

    -- 
    select * from `greenco-db`.`TEST`.`ventas`

),

renamed as (

    select

        ----------  ids
        cod_cliente as customer_id,

        ---------- text
        cliente as customer_name

    from source

)

select * from renamed