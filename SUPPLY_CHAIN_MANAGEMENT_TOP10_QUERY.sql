USE DATABASE supply_chain_management;
SELECT*
FROM supply_chain_analysis LIMIT 5;
-- NOW WE SHALL FIND TOP 10 INSIGHTS USING MYSQL QUERIES
-- 1ST QUESTION Find the total orders, customers, sales, and average sales per row.
SELECT 
      COUNT(distinct order_id) as total_orders,
	  COUNT(distinct customer_id) as total_customers,
	   ROUND(sum(sales_per_customer) , 2) as total_sales,
       ROUND(avg(sales_per_customer) , 2) as total_sales_per_row
from supply_chain_analysis;
-- que 2 how many orders are at risk of being late
select
      total_orders,
      risky_orders,
      round((risky_orders*100/total_orders),2)
from
     ( select
     COUNT(distinct order_id) as total_orders,
	 COUNT(distinct if(late_delivery_risk = 1, order_id, NULL)) as risky_orders
     from supply_chain_analysis
) as delievery_data;
-- que3 WHICH SHIPPING MODE IS HAVING HIGHEST RISK OF LATE DELIEVERY
SELECT
	  shipping_mode,
      count(distinct order_id) as total_orders,
      sum(late_delivery_risk) as risk_records,
      round(avg (late_delivery_risk)*100,2) as risk_percentage
from supply_chain_analysis
group by shipping_mode
order by risk_percentage desc;
-- que4 which product categories generate the highest sales ?
select
      category_name,
      round(sum(sales_per_customer),2) as total_sales
from supply_chain_analysis
group by category_name
order by total_sales desc;
-- que 5 which markets generate highest sales?
select
       market,
       round(sum(sales_per_customer),2) as total_sales,
       count(distinct order_id) as total_orders,
	   count(distinct customer_id) as total_customers
from supply_chain_analysis
group by market
order by total_sales desc;
-- que6 HOW THE SALES VARIES BY MONTHS
select
      date_format(order_date_dateorders, '%Y-%M') as order_month,
      round(sum(sales_per_customer),2) as monthly_sales,
      count(distinct order_id) as total_orders
from supply_chain_analysis
group by date_format(order_date_dateorders, '%Y-%M')
order by total_orders desc; 
-- que 7 which customer segments generate highest sales
select
       customer_segment,
       round(sum(sales_per_customer),2) as total_sales,
        count(distinct order_id,2) as total_orders,
        count(distinct customer_id,2) as total_customer
from supply_chain_analysis
group by customer_segment
order by total_sales desc;
-- que8 which department generate highest sales
select
       department_name,
       round(sum(sales_per_customer),2) as total_sales,
        count(distinct order_id,2) as total_orders
from supply_chain_analysis
group by  department_name
order by total_sales desc;
-- que9 Which regions have the highest late-delivery risk?
select
       order_region,
       round(avg(late_delivery_risk*100),2) as risk_percentage,
        count(distinct order_id,2) as total_orders
from supply_chain_analysis
group by order_region
order by risk_percentage desc;  
-- que 10 which products generate the highest sales
SELECT
    order_item_cardprod_id AS product_id,
    COUNT(*) AS total_order_items,
    ROUND(SUM(sales_per_customer), 2) AS total_sales
FROM supply_chain_analysis
GROUP BY order_item_cardprod_id
ORDER BY total_sales DESC
LIMIT 10;   