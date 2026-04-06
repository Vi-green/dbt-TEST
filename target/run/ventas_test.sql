
  
    

    create or replace table `greenco-db`.`TEST`.`ventas_test`
      
    
    

    
    OPTIONS()
    as (
      with

customers as (

    select * from `greenco-db`.`TEST`.`stg_ventas`

)
select * from customers
    );
  