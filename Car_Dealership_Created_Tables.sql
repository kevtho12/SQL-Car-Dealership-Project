CREATE TABLE "salesperson" (
  "salesperson_id" Serial primary key,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100)
);

CREATE TABLE "car" (
  "car_id" SERIAL primary key,
  "car_model" VARCHAR(100),
  "color" VARCHAR(100),
  "year_" numeric(10,2)
);



CREATE TABLE "customer_" (
  "customer_id" SERIAL primary key,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(100),
  "billing_info" VARCHAR(100)
);

CREATE TABLE "service" (
  "service_id" SERIAL primary key,
  "Description" VARCHAR(100),
  "Price" NUMERIC(10,2)
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL primary key,
  "last_name" VARCHAR(100),
  "first_name" VARCHAR(100)
);

CREATE TABLE "parts" (
  "parts_id" SERIAL primary key,
  "name" VARCHAR(100),
  "retail price" VARCHAR(100)
);

CREATE TABLE "sales_invoice " (
  "invoice_id" Serial primary key,
  "date_" DATE,
  "car_id" INTEGER not null,
  "customer_id" INTEGER not null,
  "salesperson_id" INTEGER not null,
  foreign key(car_id) references car(car_id),
  foreign key(customer_id) references customer_(customer_id),
  foreign key(salesperson_id) references salesperson(salesperson_id)
);

CREATE TABLE "service_ticket" (
  "service_ticket" SERIAL primary key,
  "Date_" DATE,
  "repair" VARCHAR(100),
  "car_id" INTEGER not null,
  "customer_id" integer not null,
  foreign key(car_id) references car(car_id),
  foreign key (customer_id) references customer_(customer_id)
);


CREATE TABLE "mechanic_service" (
  "mechanic_service" SERIAL primary key,
  "rate" NUMERIC(10,2),
  "hours" NUMERIC(10,2),
  "service_id" INTEGER not null,
  "mechanic_id" INTEGER not null,
  "service_ticket" INTEGER not null,
  foreign key(service_id) references service(service_id),
  foreign key(mechanic_id) references mechanic(mechanic_id),
  foreign key(service_ticket) references service_Ticket(service_ticket)
);

CREATE TABLE "parts used" (
  "parts_used" SERIAL primary key,
  "used_parts" varchar(100),
  "parts_id" INTEGER not null,
  "service_ticket" INTEGER not null, 
  foreign key (parts_id) references parts(parts_id),
  foreign key (service_ticket) references service_ticket(service_ticket)
);

