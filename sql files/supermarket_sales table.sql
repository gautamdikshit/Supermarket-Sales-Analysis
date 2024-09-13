create table supermarket_sales(
	invoice_id varchar(255),
	branch varchar(50),
	city varchar(50),
	customer_type varchar(50),
	gender varchar(10),
	product_line varchar(100),
	unit_price decimal(10,2),
	quantity int,
	tax decimal(10,2),
	total decimal(10,2),
	date DATE,
	time TIME,
	payment varchar(50),
	cogs decimal(10,2),
	gross_margin_percentage decimal(10,2),
	gross_income decimal(10),
	rating decimal(3,2)
)