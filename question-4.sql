-- Which sales agent made the most in sales in 2010?
SELECT 
  employees.FirstName || ' ' || employees.LastName AS SalesAgent,
  SUM(invoice_items.UnitPrice * invoice_items.Quantity) AS TotalSales
FROM 
  invoices
JOIN 
  customers ON invoices.CustomerId = customers.CustomerId
JOIN 
  employees ON customers.SupportRepId = employees.EmployeeId
JOIN 
  invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
WHERE 
  employees.Title = 'Sales Support Agent' AND
  invoices.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY 
  SalesAgent
ORDER BY 
  TotalSales DESC
LIMIT 1;
