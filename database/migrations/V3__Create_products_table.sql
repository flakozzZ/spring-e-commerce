create table if not exists products
(
    id                  serial primary key,
    name                varchar(255)   not null,
    description         text,
    price               decimal(10, 2) not null,
    discount_price      decimal(10, 2),
    discount_percentage decimal(5, 2),
    stock_quantity      integer        not null,
    created_at          timestamptz default current_timestamp,
    updated_at          timestamptz default current_timestamp,
    deleted_at          timestamptz default current_timestamp
)