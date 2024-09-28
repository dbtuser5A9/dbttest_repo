select "order_id", "product_id", "customer_id", "quality", "order_date",
                      extract(year from "order_date") as year,
                      extract(quarter from "order_date") as quarter,
                      extract(month from "order_date") as month
                      from dev.raw_data.orders;
                      from {{ Source('raw Source', 'orders')}}