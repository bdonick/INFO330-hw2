-- What was the most purchased track of 2013?
SELECT 
  tracks.Name AS TrackName, 
  COUNT(*) AS TotalPurchases 
FROM 
  tracks 
JOIN 
  invoice_items ON tracks.TrackId = invoice_items.TrackId 
JOIN 
  invoices ON invoice_items.InvoiceId = invoices.InvoiceId 
WHERE 
  strftime('%Y', invoices.InvoiceDate) = '2013' 
GROUP BY 
  tracks.TrackId 
ORDER BY 
  TotalPurchases DESC 
LIMIT 1;
