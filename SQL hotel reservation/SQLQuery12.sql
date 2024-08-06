SELECT 
    [arrival_month],
    [No_of_special_requests],
    COUNT(*) AS [No_of_bookings]
FROM 
    [Hotel Reservation].[dbo].[Hotel Reservations]
WHERE 
    [No_of_special_requests] IS NOT NULL
    AND [Booking_status] IN ('Canceled', 'Check-Out')
GROUP BY 
    [arrival_month],
    [No_of_special_requests]
ORDER BY 
    [arrival_month],
    [No_of_special_requests]
