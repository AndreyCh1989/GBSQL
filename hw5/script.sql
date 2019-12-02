drop database if exists hw5;
create database hw5;
USE hw5;
create table users (
	id serial primary key,
	name varchar(100),
    created_at varchar(225),
    updated_at varchar(225)
);

insert into users (name) values 
('user1'),
('user2'),
('user3'),
('user4'),
('user5'),
('user6'),
('user7'),
('user8'),
('user9'),
('user10');

update users
set created_at=now(), updated_at=now();

alter table users 
MODIFY column created_at datetime, 
MODIFY column updated_at datetime;

create table storehouses_products (
	id serial primary key,
	product_id int(12) not null,
    value int(12) not null
);

insert into storehouses_products (product_id, value) values 
(0, FLOOR(RAND()*(100))),
(1, FLOOR(RAND()*(100))),
(2, FLOOR(RAND()*(100))),
(3, FLOOR(RAND()*(100))),
(4, FLOOR(RAND()*(100))),
(5, FLOOR(RAND()*(100))),
(6, FLOOR(RAND()*(100))),
(7, FLOOR(RAND()*(100))),
(8, 0),
(9, 0);

select * from storehouses_products order by value=0, value;

alter table users add column birthday datetime;
update users
set birthday=DATE_ADD(now(), INTERVAL -FLOOR(RAND()*(300)) MONTH);

select dayofweek(DATE_FORMAT(birthday, concat(year(now()), '-%m-%d'))) as dayofweek, count(*) as count from users group by dayofweek order by dayofweek;