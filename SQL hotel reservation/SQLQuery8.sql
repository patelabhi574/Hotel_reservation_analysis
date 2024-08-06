SELECT 
    [Market_segment_type], 
    [Room_type_reserved],
    SUM(CASE WHEN [No_of_weekend_nights] > 0 THEN 1 ELSE 0 END) AS [No_of_weekend_bookings],
    SUM(CASE WHEN [No_of_weekend_nights] > 0 THEN [No_of_week_nights] ELSE 0 END) AS [No_of_weekdays_booked],
    SUM(CASE WHEN [Booking_status] = 'Canceled' THEN 1 ELSE 0 END) AS [No_of_cancellations]
FROM 
    [Hotel Reservation].[dbo].[Hotel Reservations]
WHERE 
    [Repeated_guest] = 1
    AND [Market_segment_type] IS NOT NULL
    AND [Room_type_reserved] IS NOT NULL
    AND [No_of_weekend_nights] > 0
GROUP BY 
    [Market_segment_type], 
    [Room_type_reserved]
