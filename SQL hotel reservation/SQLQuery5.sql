SELECT 
    [arrival_month],
    COUNT(*) AS total_bookings,
    AVG(CAST([lead_time] AS INT)) AS avg_lead_time
FROM 
    [Hotel Reservation].[dbo].[Hotel Reservations]
WHERE 
    [market_segment_type] = 'Online'
GROUP BY 
    [arrival_month]
