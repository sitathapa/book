CREATE DATABASE if not exists cs19d;
use cs19d;
CREATE TABLE registers (username varchar(15) PRIMARY KEY, password varchar(20), name varchar(50), address varchar(30),
phone varchar(20));
INSERT INTO registers (username, password, name, address, phone) VALUES ('bipin44','rollon','BipinPrakashDhakal','Kathmandu',
'9869374427');
update registers set name='Bipin Prakash Dhakal' WHERE username='bipin44';
select * from registers;
INSERT INTO register (username, password, name, address, phone) VALUES ('bipin47','rollo9n','BipinPrakashDhakal','Kathmandu',
'9869374427');

use cs19d;
create table booksdetail (id int PRIMARY KEY AUTO_INCREMENT, name varchar(100), writer varchar(100), price double, publisher varchar(100), catagory varchar(50)); 

use cs19d;
create table catq (cat_id int PRIMARY KEY AUTO_INCREMENT, catagory varchar(50));
insert into  catq (catagory) values ('Story');
insert into  catq (catagory) values ('Novel');
insert into  catq (catagory) values ('Essay');
insert into  catq (catagory) values ('Dictionary');
insert into  catq (catagory) values ('History');
insert into  catq (catagory) values ('Research');
insert into  catq (catagory) values ('Poem');

select catagory from catq;

select id from booksdetail where name='Alchemist' and publisher='Sunrise';
select * from booksdetail where name  or publisher or writer='Ganeshman Singh';
SELECT * FROM booksdetail WHERE writer LIKE 'Hari Gautam';
select * from booksdetail where writer ;

ALTER TABLE `booksdetail` ADD `ent_book`varchar(100) ;
ALTER TABLE `booksdetail` ADD `rem_book`varchar(100) ;

CREATE table bill (id int Primary key auto_increment, cus_name varchar(50), cus_phone varchar(10),book int references booksdetail(id), price varchar(30), discount varchar(20), total varchar(10), date varchar(20));
delete from bill where id=1;
use cs19d;
ALTER TABLE `bill` ADD `bill_by` varchar(100) ;

ALTER TABLE `registers` ADD `email` varchar(100) ;
use cs19d;
ALTER TABLE `bill` ADD `bookname` varchar(100) ;

ALTER TABLE `registers`
  MODIFY `phone` varchar(20);