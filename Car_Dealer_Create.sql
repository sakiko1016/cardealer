CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE car(
	car_id SERIAL PRIMARY KEY, 
	serial_number VARCHAR(50),
	make VARCHAR(50),
	model VARCHAR(50),
	color VARCHAR(30),
	year VARCHAR(20)
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone VARCHAR(20),
	address VARCHAR(100)
);

CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY, 
	service_ticket_number INTEGER,
	car_id INTEGER,
	customer_id INTEGER
);

CREATE TABLE parts (
	parts_id SERIAL PRIMARY KEY, 
	service_ticket_number INTEGER,
	price NUMERIC(10,2)
	FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

CREATE TABLE service_history (
	service_history_id SERIAL PRIMARY KEY, 
	service_ticket_id INTEGER,
	parts_id INTEGER,
	mechanic_id INTEGER
	FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id),
	FOREIGN KEY(parts_id) REFERENCES parts(parts_id),
	FOREIGN key(mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE invoice (
	invoice_id SERIAL PRIMARY KEY, 
	invoice_number VARCHAR(50),
	date DATE DEFAULT current_date,
	car_id INTEGER,
	customer_id INTEGER,
	salesperson_id INTEGER
	FOREIGN key(car_id) REFERENCES car(car_id),
	FOREIGN key(customer_id) REFERENCES customer(customer_id),
	FOREIGN key(salesperson_id) REFERENCES salesperson(salesperson_id)
);
