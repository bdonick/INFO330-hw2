-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT 
  invoices.InvoiceId, 
  invoices.InvoiceDate, 
  customers.FirstName, 
  customers.LastName
FROM 
  invoices 
  JOIN customers ON invoices.CustomerId = customers.CustomerId
WHERE 
  customers.Country = 'Brazil';