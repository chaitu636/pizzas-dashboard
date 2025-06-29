select * from Orders

select sum(sales) as Total_Sales, sum(profit) as Total_Profits from orders;

select category, sum(sales) as Total_Sales
from orders
group by category
order by Total_Sales desc;

select [Sub-Category], sum(sales) as Total_Sales
from orders
group by [Sub-Category]
order by Total_Sales desc;

#Top 10 Products by sales
select top 10 [Product Name], sum(sales) as Total_Sales
from orders
group by 
[Product Name]
order by Total_sales desc;


#Monthly Sales Trend
select MONTH([Ship Date]) as Month_Number, DATENAME(MONTH,[Ship Date]) as Month, sum(sales) as Total_Sales
from orders
group by DATENAME(MONTH,[Ship Date]), MONTH([Ship Date])
order by Month_Number;

#Region-wise Sales and Profit
select region, sum(Sales) as Total_Sales, sum(Profit) as Total_Profit
from orders
group by region
order by Total_Sales desc, Total_Profit desc;


#Customer segments performance 
select segment, sum(sales) as Total_Sales,sum(profit) as Total_Profit
from orders
group by segment
order by Total_Sales desc, Total_Profit desc;

#Profit Margin (%)
select (sum(profit)/sum(sales))*100 as Profit_Margin_Percentage
from orders;

#Shipping Time Analysis
select AVG(DATEDIFF(day, [Order Date],[Ship Date])) as Average_Shipping_Days
from orders;
select [Order ID], DATEDIFF(day, [Order Date], [Ship Date]) as OrderShipped_More_Than_3Days
from orders
where DATEDIFF(day, [order Date], [Ship Date]) > 3;