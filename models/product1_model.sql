{{ config 
         (materialized = 'table'
         alias = 'DIM_Products')
}}
select "id", "name", "category", round("price") as price
                                              from {{ Source('raw Source', 'products')}}