-- Which products (Product line) are selling the most?
select
	product_line,
	sum(quantity) as total_quantity
from supermarket_sales
group by product_line
order by total_quantity desc limit 1;

-- Which branches are performing the best?
select 
	branch,
	sum(total) as total_revenue
from supermarket_sales
group by branch
order by total_revenue desc limit 1;

-- What is the gross income per product and branch?
--gross income per product
select
	product_line,
	sum(gross_income) as total_gross_income
from supermarket_sales
group by product_line
order by total_gross_income desc;

--gross income per branch
select
	branch,
	sum(gross_income) as total_gross_income
from supermarket_sales
group by branch
order by total_gross_income desc;

--which customer type (Member vs Normal) is contributing the most to revenue
select
	customer_type,
	sum(total) as total_revenue
from supermarket_sales
group by customer_type
order by total_revenue desc;

--Compare sales performance based on gender
select
	gender,
	sum(total) as total_revenue
from supermarket_sales
group by gender
order by total_revenue desc;


--Analyze how sales fluctuate over different months.
select
	extract(month from date) as months,
	sum(total) as monthly_revenue
from supermarket_sales
group by months
order by months;

--Analyze which days see the most sales
select 
	extract(day from date) as days,
	sum(total) as daily_revenue
from supermarket_sales
group by days
order by daily_revenue desc;

--which payment method customers prefer the most.
select
	payment,
	count(payment) as total_payments_made
from supermarket_sales
group by payment
order by total_payments_made desc;

--Determine which payment methods have the highest average transaction value
select
	payment,
	round(avg(total),2) as avg_revenue
from supermarket_sales
group by payment
order by avg_revenue desc;

--Determine the profit margin for each product line
--profit_margin=gross_income/total_sales
select
	product_line,
	sum(gross_income)/sum(total) as profit_margin
from supermarket_sales
group by product_line
order by profit_margin desc
	
	
--Compare how different branches perform over time
select 
	branch,
	extract(month from date) as months,
	sum(total) as total_sales_by_months
from supermarket_sales
group by branch,months
order by branch, months

--Identify how satisfied customers are with each product line
select
	product_line,
	round(avg(rating),2) as avg_rating
from supermarket_sales
group by product_line
order by avg_rating desc;

-- Calculating daily sales rate for each product line
select
	product_line,
	date as sales_date,
	sum(quantity)
from supermarket_sales
group by product_line,sales_date
order by product_line,sales_date;
