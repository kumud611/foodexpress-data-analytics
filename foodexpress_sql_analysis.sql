--Which City generates the highest revenue?
SELECT city ,SUM(final_amount) AS total_amount
FROM orders
GROUP BY city
ORDER BY SUM(final_amount) DESC;
--What is the average delivery time, and which factors affect it?
SELECT ROUND(AVG(delivery_time_mins),2) AS avg_delivery_time
FROM orders;
SELECT city, ROUND(AVG(delivery_time_mins),2) AS avg_delivery_time
FROM orders
GROUP BY city
ORDER BY avg_delivery_time DESC;
SELECT time_slot, ROUND(AVG(delivery_time_mins),2) AS avg_delivery_time
FROM orders
GROUP BY time_slot
ORDER BY avg_delivery_time DESC;
SELECT CORR(distance_km ,delivery_time_mins) AS distance_time_correlation
FROM orders;
--What is the order cancellation rate, and what reasons drive cancellations?
SELECT 
  COUNT(*) AS total_orders,
  COUNT(CASE WHEN order_status = 'Cancelled' THEN 1 END) AS cancelled_orders ,
  ROUND(COUNT(CASE WHEN order_status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct
FROM orders;
SELECT cancellation_reason, COUNT(*) AS reason_count
FROM orders
WHERE order_status = 'Cancelled'
GROUP BY cancellation_reason
ORDER BY reason_count DESC;
-- Which cuisines and payment methods are most preferred?
SELECT cuisine_type,COUNT(*)AS total_number_of_order, SUM(final_amount) AS revenue
FROM orders
GROUP BY cuisine_type
ORDER BY sum(final_amount) DESC;
SELECT payment_method,COUNT(*)AS total_number_of_order, SUM(final_amount)AS revenue
FROM orders
GROUP BY payment_method
ORDER BY COUNT(*) DESC;
--Who are the top customers by order frequency and spend?
SELECT customer_name, count(*) AS total_number_of_order
FROM orders
GROUP BY customer_name
ORDER BY COUNT(*) DESC 
LIMIT 10;
SELECT customer_name, SUM(final_amount) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY SUM(final_amount) DESC 
LIMIT 10;
--Does delivery time affect customer rating?
SELECT CORR(delivery_time_mins, customer_rating) AS time_rating_correlation
FROM orders;
