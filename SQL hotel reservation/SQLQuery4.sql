SELECT [Market_segment_type]
    ,[arrival_year]
    ,[room_type_reserved]
    ,COUNT(*) AS [Count_of_no_of_bookings]
FROM [Hotel Reservation].[dbo].[Hotel Reservations]
GROUP BY [Market_segment_type], [arrival_year], [room_type_reserved]
ORDER BY [Market_segment_type], [arrival_year], [room_type_reserved]