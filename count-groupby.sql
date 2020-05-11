--show the number of customers in each country
SELECT
	Customer.Country,
	COUNT(*) as `Number of Customers`
FROM
	Customer
GROUP BY
	Customer.Country