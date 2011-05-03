create table customers(
    id int primary key auto_increment,
    full_name varchar(255),
    short_name varchar(255),
    tel varchar(255),
    fax varchar(255),
    contact varchar(255),
    cellphone varchar(255),
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table people(
    id int primary key auto_increment,
    customer_id int,
    name varchar(255),
    cellphone varchar(255),
    tel varchar(255),
    fax varchar(255),
    position varchar(255),
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table employees(
    id int primary key auto_increment,
    name varchar(255),
    nick_name varchar(255),
    password varchar(255),
    phone varchar(255),
    id_num varchar(255),
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table suppliers(
    id int primary key auto_increment,
    full_name varchar(255),
    short_name varchar(255),
    contact varchar(255),
    cellphone varchar(255),
    tel varchar(255),
    fax varchar(255),
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table items(
    id int primary key auto_increment,
    supplier_id int not null,
    subject_id int not null,
    name varchar(255),
    model varchar(255),
    pic varchar(255),
    description text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;
 
create table subjects(
    id int primary key auto_increment,
    name varchar(255),
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table orders(
    id int primary key auto_increment,
    employee_id int not null,
    customer_id int not null,
    include_invoice int default 0, #0 不含税，1含税
    contact varchar(255),
    tel varchar(255),
    order_at date,
    deadline date,
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table order_details(
    id int primary key auto_increment,
    order_id int not null,
    item_id int not null,
    quantity int,
    unit_price float,
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;



create table products(
    id int primary key auto_increment,
    name varchar(255),
    model varchar(255),
    pic varchar(255),
    pic_num varchar(255),
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;

create table product_details(
    id int primary key auto_increment,
    item_id int,
    name varchar(255),
    quantity int,
    remark text,
    created_at datetime,
    updated_at datetime
) engine=InnoDB,default character set utf8;