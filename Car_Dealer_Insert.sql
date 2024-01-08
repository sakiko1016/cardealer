INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
)VALUES(
	1,
	'Sakiko',
	'Cooper'
);

INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
)VALUES(
	2,
	'Brian',
	'Cooper'	
);

INSERT INTO mechanic (
	mechanic_id, 
	first_name,
	last_name
)values(
	1, 
	'John',
	'Smith'
);

INSERT INTO mechanic (
	mechanic_id, 
	first_name,
	last_name
)values(
	2, 
	'Jane',
	'Fizgerald'
);

insert into car(
	car_id, 
	serial_number,
	make,
	model,
	color,
	year	
)VALUES(
	1,
	123456789,
	'BENZ',
	'GLC500',
	'Black',
	'2024'
);

insert into car(
	car_id, 
	serial_number,
	make,
	model,
	color,
	year	
)VALUES(
	2,
	987654321,
	'JEEP',
	'Grand Cherokee L',
	'White',
	'2023'
);

insert INTO customer(
	customer_id, 
	first_name,
	last_name,
	phone,
	address
)VALUES(
	1,
	'Ella',
	'Fizgerald',
	'555-555-5555',
	'444 E75th Street New York NY 10021'
);

insert INTO customer(
	customer_id, 
	first_name,
	last_name,
	phone,
	address
)VALUES(
	2,
	'David',
	'ROSE',
	'555-555-1234',
	'436 W Englewood Ave Englewood NJ 75469'
);

insert into service_ticket(
	service_ticket_id, 
	service_ticket_number,
	car_id,
	customer_id
)Values(
	1,
	101,
	1,
	1
);

insert into service_ticket(
	service_ticket_id, 
	service_ticket_number,
	car_id,
	customer_id
)Values(
	2,
	102,
	2,
	2
);

insert INTO parts (
	parts_id, 
	service_ticket_number,
	price
)VALUES(
	1,
	101,
	100
);

insert INTO parts (
	parts_id, 
	service_ticket_number,
	price
)VALUES(
	2,
	102,
	200
);

insert into service_history (
	service_history_id, 
	service_ticket_id,
	parts_id,
	mechanic_id
)VALUES(
	1,
	1,
	1,
	1
);

insert into service_history (
	service_history_id, 
	service_ticket_id,
	parts_id,
	mechanic_id
)VALUES(
	2,
	2,
	2,
	2
);

insert into invoice (
	invoice_id, 
	invoice_number,
	date,
	car_id,
	customer_id,
	salesperson_id
)VALUES(
	1,
	101,
	'01/08/2024',
	1,
	1,
	1
);

insert into invoice (
	invoice_id, 
	invoice_number,
	date,
	car_id,
	customer_id,
	salesperson_id
)VALUES(
	2,
	102,
	'01/10/2024',
	2,
	2,
	2
);
	