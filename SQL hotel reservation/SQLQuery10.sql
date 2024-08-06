SELECT 
    [Market_segment_type], 
    [arrival_month],
    CASE WHEN [No_of_special_requests] > 0 THEN 'Yes' ELSE 'No' END AS [Special_request_made],
    COUNT(*) AS [Count_of_requests]
FROM 
    [Hotel Reservation].[dbo].[Hotel Reservations]
WHERE 
    [Market_segment_type] = 'Online'
    AND [arrival_month] IS NOT NULL
GROUP BY 
    [Market_segment_type], 
    [arrival_month], 
    CASE WHEN [No_of_special_requests] > 0 THEN 'Yes' ELSE 'No' END
ORDER BY 
    [Market_segment_type], 
    [arrival_month], 
    [Special_request_made]
