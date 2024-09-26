{{config
        (materialized = 'table',
         alias = 'DIM_PRODUCTS')
}}

select "id","name", "category", round("price") as price from DEV.RAW_DATA.PRODUCTS