-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT 
  tracks.Name AS TrackName,
  artists.Name AS ArtistName,
  invoice_items.InvoiceLineId
FROM 
  invoice_items
JOIN 
  tracks ON invoice_items.TrackId = tracks.TrackId
JOIN 
  albums ON tracks.AlbumId = albums.AlbumId
JOIN 
  artists ON albums.ArtistId = artists.ArtistId;
