drop table order_logs;
drop table food;
drop table customer;
drop table restaurant;

create table restaurant(
  rname varchar(20) not null,
  rlocation varchar(17),
  genre varchar(10),
  rmanager varchar(10),
  contact_no number(11) unique,
  vat integer,
  primary key(rname)
  );
  
 create table customer(
	cid integer,
	cname varchar(20),
	address varchar(20),
	credit_rating VARCHAR(9),
	primary key(cid)
);
  
 create table food(
  fid integer,
  fname varchar(20),
  price integer,
  restaurant_name varchar(20),
  primary key(fid),
  foreign key(restaurant_name) references restaurant(rname)
  );
  
  
  
	
create table order_logs(
	order_no integer,
	customer_id integer,
	food_id integer,
	quantity integer,
	order_date date,
	restaurant_name varchar(20),
	payment_type  VARCHAR(6),
	primary key(order_no),
	foreign key(customer_id) references customer (cid),
	foreign key(food_id) references food (fid),
	foreign key(restaurant_name) references restaurant(rname)
	);
	
	


insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Bistro-C','Royal mor','fast_food','Faruque',01858540580,15);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Kifeng','power house mor','chinese','Manik',01867893459,15);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('The coffe club','Sonadanga','fast_food','Rony',01789746832,15);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Radhuni','Moylapota','Grill','Habib',01989742862,0);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('New megha biriyani','Khalishpur','Biriyani','Harun',01786385419,0);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Eatery','Shibbari','fast_food','Robiul',01733454524,0);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('King_Shwarma','sat rastar mor','fast_food','Robi',01783345454,0);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Kacchighor','sat rastar mor','Biriyani','Fahad',01858540700,0);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Chinese Palace','PTI mor','Chinese','Rayhan',01558540700,0);
insert into restaurant (rname,rlocation,genre,rmanager,contact_no,vat)
				values ('Olive','Fulbarigate','Grill','Ahsan',01958543560,0);
				
				
				
				
				
				


insert into food (fid,fname,price,restaurant_name)
			values (0101,'chicken biriyani',120,'New megha biriyani');
insert into food (fid,fname,price,restaurant_name)
			values (0201,'chicken burger',180,'Bistro-C');
insert into food (fid,fname,price,restaurant_name)
			values (0301,'chicken fried rice',650,'Kifeng');
insert into food (fid,fname,price,restaurant_name)
			values (0401,'chicken grill',90,'Radhuni');
insert into food (fid,fname,price,restaurant_name)
			values (0501,'club sandwitch-6',350,'The coffe club');
insert into food (fid,fname,price,restaurant_name)
			values (0601,'chicken bbq',100,'Radhuni');
insert into food (fid,fname,price,restaurant_name)
			values (0602,'chicken bbq',80,'Olive');
insert into food (fid,fname,price,restaurant_name)
			values (0701,'french fry',40,'Chinese Palace');
insert into food (fid,fname,price,restaurant_name)
			values (0603,'chicken biriyani',130,'Kacchighor');
insert into food (fid,fname,price,restaurant_name)
			values (0702,'chicken shwarma',100,'King_Shwarma');
insert into food (fid,fname,price,restaurant_name)
			values (0901,'club sandwitch',120,'Eatery');
			
			
			
			
			
			
insert into customer (cid,cname,address,credit_rating)
 			values (0001,'Sakib','Mujgunni','POOR');	
insert into customer (cid,cname,address,credit_rating)
 			values (0002,'Abid','Sonadanga','POOR');
insert into customer (cid,cname,address,credit_rating)
 			values (0003,'Soumik','Sat_rasta_mor','EXCELLENT');
insert into customer (cid,cname,address,credit_rating)
 			values (0004,'Rajim','Boyra','MEDIUM');
insert into customer (cid,cname,address,credit_rating)
 			values (0005,'Niloy','Dolkhola','EXCELLENT');
insert into customer (cid,cname,address,credit_rating)
 			values (0006,'Rabbi','Khalishpur','EXCELLENT');
insert into customer (cid,cname,address,credit_rating)
 			values (0007,'Faysal','Navy_coloni','EXCELLENT');
insert into customer (cid,cname,address,credit_rating)
 			values (0008,'Shuva','Khalishpur','EXCELLENT');
insert into customer (cid,cname,address,credit_rating)
 			values (0009,'Mayen','Chorerhat','POOR');
insert into customer (cid,cname,address,credit_rating)
 			values (0010,'Sagar','KUET','EXCELLENT');



			
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0001,0003,0201,2,'27-FEB-2018','Bistro-C','CASH');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0002,0004,0501,1,'27-FEB-2018','The coffe club','CREDIT');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0003,0006,0501,2,'27-FEB-2018','The coffe club','CREDIT');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0004,0002,0301,1,'27-FEB-2018','Kifeng','CASH');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0005,0001,0101,1,'27-FEB-2018','New megha biriyani','CREDIT');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0006,0005,0601,1,'27-FEB-2018','Radhuni','CASH');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0007,0009,0701,5,'27-FEB-2018','Chinese Palace','CASH');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0008,0008,0602,2,'27-FEB-2018','Olive','CREDIT');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0009,00010,0602,1,'27-FEB-2018','Olive','CASH');
insert into order_logs (order_no,customer_id,food_id,quantity,order_date,restaurant_name,payment_type)
			values (0010,0007,0901,6,'27-FEB-2018','Eatery','CREDIT');
			
			
select distinct cname from customer;
select fid,fname,price*100 from food;
select rname from restaurant where genre='Biriyani';
select fname from food where price>100;
select cname from customer where address like '%kha%';
select restaurant_name from food where price>=100 and price<=200;
select restaurant_name from food where price IN (100,200);
select * from customer order by cname;
select count(order_no) from order_logs;
select count(fname) as food_name from food where price='120';
select count(distinct order_date) from order_logs;
select sum(price) as total_price from food;
select MAX(price) as highest_order_price from food;
select sum(price) from food having sum(price)>1000;
select customer_id from order_logs where customer_id in(select cid from customer);
update food set price=price-50 where price>500;
select cu.cid,cu.cname,o.restaurant_name from customer cu,order_logs o where cu.cid=o.customer_id;
select cu.cid,cu.cname,o.restaurant_name from customer cu join order_logs o ON cu.cid=O.customer_id;
select cu.cid,cu.cname,o.restaurant_name from customer cu join order_logs o ON cu.cid=o.customer_id;
select * from order_logs;








