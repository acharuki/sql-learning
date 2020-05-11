--show report of customer firstname, lastname, country, 
--and number of invoices that customer has
SELECT
	Customer.FirstName,
	Customer.LastName,
	Customer.Country,
	COUNT(Invoice.CustomerId) as `Number of Invoices`
FROM
	Customer
JOIN
	Invoice
ON
	Customer.CustomerId = Invoice.CustomerId
GROUP BY
	Customer.CustomerId
ORDER BY
	`Number of Invoices` ASC