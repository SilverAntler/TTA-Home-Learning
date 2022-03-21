show databases;

use Houses;

Create table house_locations (
primary key (Visit_ID),
visit_ID varchar (3) not null,
location varchar (20) not null,
Av_property_price int not null,
Train_station char (1),
Visit_date date ,
Postcode varchar (10) not null
);

explain house_locations;

insert into house_locations (visit_id, location, av_property_price, train_Station, visit_date, postcode)
values ('11', 'Breedon', '300000', 'N', '20200304', 'DE738AY'),
('2', 'Ashby', '250000', 'N', '20200115', 'LE651RR'),
('3', 'Walsall', 140000, 'Y', '20121213', 'WS66DX'),
('4', 'Wyaston', '700000', 'N', '20170606', 'DE625DR'),
('5', 'Repton', '1200000', 'N', '20211011', 'RE728IA'),
('6', 'Oxford', '1400000', 'Y', '20060312', 'OX123BD'),
('7', 'Derby', '285000', 'Y', '20180304', 'DE345HB'),
('8', 'Tamworth', '465000', 'Y', '20211108', 'TA123KK'),
('9', 'Bredsall', '375000', 'N', '20200103', 'BR321IL');

explain house_locations;
select * from house_locations;

delete from house_locations
where visit_ID = '11';
select * from house_locations;
-- this has deleted the duplicate row. 

insert into house_locations 
values ('10', 'Melbourne', '825000', 'N', '20180101', 'Me346AX');
-- not necessary to copy all of the field names in (need to double check)

select * from house_locations;
-- this has added in the tenth row. 

select av_property_price, location from house_locations;
-- selecting specific columns

select * from house_locations
where visit_id ='3';
-- retrieving one row

select * from house_locations order by av_property_price;
-- ordering by one field

select * from house_locations order by visit_id;
-- QUESTION, why is it 1, 10, 2? not numerical order?

select location, av_property_price, visit_date from house_locations order by visit_date, av_property_price;
-- first visit date, then property price

select * from house_locations where av_property_price between 200000 and 650000;
-- this brings up only the results that match. 
-- QUESTION: does this only work with data type integer?
