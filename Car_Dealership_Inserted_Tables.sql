create or replace function add_salesperson (
	_sales_person_id integer,
	_first_name varchar, 
	_last_name varchar
)
returns void
as $main$ 
begin 
	insert into salesperson(salesperson_id,first_name,last_name)
	values(_sales_person_id,_first_name,_last_name);
end;
$main$
language plpgsql;

select add_salesperson(1,'Tom','Hanks')
select add_salesperson(2,'Martha','Stewart')

select * from salesperson


create or replace function add_car (
	_car_id integer,
	_car_model varchar, 
	_color varchar,
	_year numeric
)
returns void
as $main$ 
begin 
	insert into car(car_id,car_model,color,year_)
	values(_car_id,_car_model,_color,_year);
end;
$main$
language plpgsql;

select add_car(1,'honda accord','blue',2020)
select add_car(2,'toyota camry','red',2015)

select * from car;

insert into customer_(
		customer_id,
		first_name,
		last_name,
		address,
		billing_info
)Values(
		1,
		'john',
		'thomas',
		'5930 westwood avenue',
		'938-569-950'
),
(
		2,
		'michael',
		'smith',
		'4963 lake street',
		'048-895-394'
);

select * from customer_

insert into service(
		service_id,
		"Description",
		"Price" 
)values(
		1,
		'engine change',
		90
),
(		
		2,
		'windshield repair',
		50
);

select * from service

insert into mechanic(
		mechanic_id,
		last_name,
		first_name 
)values(
		1,
		'joe',
		'weller'
),
(		
		2,
		'salim',
		'umar'
);

		
select * from mechanic

insert into parts(
		parts_id,
		"name" ,
		"retail price"  
)values(
		1,
		'engine repair',
		'50'
),
(		
		2,
		'windshield repair',
		'25'
);

select * from parts

insert into "sales_invoice " (
		invoice_id,
		date_,
		car_id,
		customer_id,
		salesperson_id
)values(
		1,
		'2022-02-10',
		1,
		1,
		2
),
(		
		2,
		'2022-05-09',
		2,
		2,
		1
);

select * from "sales_invoice " si 

insert into service_ticket (
		service_ticket,
		"Date_" ,
		repair,
		car_id,
		customer_id
)values(
		1,
		'2022-05-11',
		'engine repair',
		1,
		2
),
(		
		2,
		'2022-10-12',
		'windshield repair',
		2,
		1
);

select * from service_ticket st 

insert into mechanic_service (
		mechanic_service,
		rate,
		hours,
		service_id,
		mechanic_id,
		service_ticket
)values(
		1,
		35,
		3,
		1,
		1,
		1
),
(		
		2,
		25,
		3,
		2,
		2,
		2
);

select * from service_ticket

insert into service_ticket (
		service_ticket,
		"Date_" ,
		repair,
		car_id,
		customer_id
)values(
		1,
		'2022-05-11',
		'engine repair',
		1,
		2
),
(		
		2,
		'2022-10-12',
		'windshield repair',
		2,
		1
);
insert into "parts used" (
		parts_used,
		used_parts ,
		parts_id,
		service_ticket 
)values(
		1,
		'engine',
		1,
		1
),
(		
		2,
		'windshield',
		2,
		2
);

select * from "parts used" pu 

