drop database if exists example;
create database example;
USE example;
create table users (
	id serial primary key,
	name varchar(100)
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