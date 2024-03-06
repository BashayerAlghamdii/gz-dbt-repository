with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee_1,
        logcost,
        ship_cost

    from source

)

select * from renamed
