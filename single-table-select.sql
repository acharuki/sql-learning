--show all customers in USA
SELECT
	FirstName,
	LastName,
	Country
FROM
	Customer
WHERE
	Country = "USA"