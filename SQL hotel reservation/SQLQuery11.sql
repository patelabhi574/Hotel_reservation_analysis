	SELECT 
    [Market_segment_type], 
    CONVERT(INT, [Arrival_month]) AS [Arrival_month], 
    SUM(CASE WHEN [No_of_special_requests] > 0 THEN 1 ELSE 0 END) AS [Special_requests_count]
FROM 
    [Hotel Reservation].[dbo].[Hotel Reservations]
WHERE 
    [Arrival_year] IN (2017, 2018)
    AND [Market_segment_type] IS NOT NULL
GROUP BY 
    [Market_segment_type], 
    CONVERT(INT, [Arrival_month])
ORDER BY 
    [Market_segment_type], 
    CONVERT(INT, [Arrival_month])
