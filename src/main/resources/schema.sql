use jdbc;

create table if not exists customers
(
    id              INT primary key auto_increment,
    name            VARCHAR(50) not null ,
    surname         VARCHAR(50),
    age             INT,
    phone_number    VARCHAR(50)
);

insert into customers (name, surname, age, phone_number) values ('Anna', 'M', 15,'079112220000');
insert into customers (name, surname, age, phone_number) values ('Ella', 'C', 35,'079213330000');
insert into customers (name, surname, age, phone_number) values ('Pavel', 'K', 25,'079634440000');
insert into customers (name, surname, age, phone_number) values ('Ivan', 'W', 28,'079095550000');
insert into customers (name, surname, age, phone_number) values ('Alex', 'I', 18,'079096660000');

create table if not exists orders
(
    id              INT primary key auto_increment,
    date            VARCHAR(50),
    customer_id     INT,
    product_name    VARCHAR(50),
    amount          INT,
    foreign key (customer_id) references customers (id)
);

insert into orders (date, customer_id, product_name, amount) values ('01.01.2022', 1, 'XXX', 2);
insert into orders (date, customer_id, product_name, amount) values ('02.01.2022', 2, 'YYY', 1);
insert into orders (date, customer_id, product_name, amount) values ('03.01.2022', 3, 'WWW', 5);
insert into orders (date, customer_id, product_name, amount) values ('04.01.2022', 4, 'AAA', 1);
insert into orders (date, customer_id, product_name, amount) values ('05.01.2022', 5, 'XXX', 3);
