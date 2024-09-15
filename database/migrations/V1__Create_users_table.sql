create table if not exists users
(
    id         serial primary key,
    username   varchar(255) not null unique,
    password   varchar(255) not null,
    email      varchar(255) not null unique,
    created_at timestamptz default current_timestamp,
    updated_at timestamptz default current_timestamp,
    deleted_at timestamptz default current_timestamp
)