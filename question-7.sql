-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT 
  tracks.TrackId, 
  tracks.Name, 
  tracks.Composer
FROM 
  tracks
LEFT JOIN (
  SELECT DISTINCT 
    invoice_items.TrackId
  FROM 
    invoice_items
) AS purchased_tracks ON tracks.TrackId = purchased_tracks.TrackId
WHERE 
  purchased_tracks.TrackId IS NULL;
