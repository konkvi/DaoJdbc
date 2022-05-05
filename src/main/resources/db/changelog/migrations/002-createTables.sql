create table if not exists jdbc.customers
(
    id              INT primary key auto_increment,
    name            VARCHAR(50) not null ,
    surname         VARCHAR(50),
    age             INT,
    phone_number    VARCHAR(50)
);

create table if not exists jdbc.orders
(
    id              INT primary key auto_increment,
    date            VARCHAR(50),
    customer_id     INT,
    product_name    VARCHAR(50),
    amount          INT,
    foreign key (customer_id) references customers (id)
);