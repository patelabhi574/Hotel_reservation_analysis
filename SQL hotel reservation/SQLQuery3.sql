SELECT market_segment_type, COUNT(*) as num_bookings
FROM [Hotel Reservation].[dbo].[Hotel Reservations]
GROUP BY market_segment_type
ORDER BY num_bookings DESC;

