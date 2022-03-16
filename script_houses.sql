show databases;

create database Houses;

Create table houses_locations (
primary key (Postcode),
location varchar (20) not null,
Av_property_price int not null,
Train_station char (1),
Visit_date date ,
Postcode varchar (10) not null
);

explain houses_locations;
