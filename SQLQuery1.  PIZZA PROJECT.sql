select * from pizza_sales;

select sum(total_price) AS TOTAL_REVENUE from pizza_sales;

select count(distinct order_id) AS TOTAL_ORDERS from pizza_sales;

select sum(quantity) AS TOTAL_PIZZAS_SOLD from pizza_sales;

select (sum(total_price)/count(distinct order_id)) AS AVERAGE_ORDER_VALUE from pizza_sales;

select (sum(quantity)/count(distinct order_id)) AS AVERAGE_PIZZAS_PER_ORDER from pizza_sales;



select
    DATENAME(WEEKDAY,order_date) AS weekday,
	COUNT(DISTINCT order_id) AS total_orders
from
 pizza_sales
 GROUP BY
     DATENAME(WEEKDAY, order_date);



	 select
    DATENAME(MONTH,order_date) AS MONTH_NAME,
	COUNT(DISTINCT order_id) AS total_orders
from
 pizza_sales
 GROUP BY
     DATENAME(MONTH, order_date);


SELECT 
  pizza_category,
  SUM(total_price) AS category_sales,
  ROUND(SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS percentage_of_total_sales
FROM
      pizza_sales
GROUP BY
  pizza_category
  ORDER BY 
        percentage_of_total_sales DESC;



		SELECT 
  pizza_size,
  SUM(total_price) AS pizza_size,
  ROUND(SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS percentage_of_total_sales
FROM
      pizza_sales
GROUP BY
  pizza_size
  ORDER BY 
        percentage_of_total_sales DESC;



		select pizza_category,sum(quantity)AS TOTAL_QUANTITY_SOLD from pizza_sales
		group by pizza_category
		order by total_quantity_sold desc;


select TOP 5 
   pizza_name,
   SUM(total_price) AS total_revenue
from
   pizza_sales
group by
    pizza_name
order by 
    total_revenue desc;


	
select TOP 5 
   pizza_name,
   SUM(quantity) AS total_quantity_sold
from
   pizza_sales
group by
    pizza_name
order by 
    total_quantity_sold desc;


	
select TOP 5 
   pizza_name,
   COUNT(DISTINCT order_id) AS total_orders
from
   pizza_sales
group by
    pizza_name
order by 
    total_orders desc;




	
select TOP 5 
   pizza_name,
   SUM(total_price) AS total_revenue
from
   pizza_sales
group by
    pizza_name
order by 
    total_revenue ASC;


	select TOP 5 
   pizza_name,
   SUM(quantity) AS total_quantity_sold
from
   pizza_sales
group by
    pizza_name
order by 
    total_quantity_sold ASC;


		
select TOP 5 
   pizza_name,
   COUNT(DISTINCT order_id) AS total_orders
from
   pizza_sales
group by
    pizza_name
order by 
    total_orders ASC;











