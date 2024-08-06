SELECT [Booking_ID],
       [no_of_weekend_nights] AS 'Weekend Nights',
       [no_of_week_nights] AS 'Weekday Nights'
FROM [Hotel Reservation].[dbo].[Hotel Reservations]
WHERE [repeated_guest] = 1

