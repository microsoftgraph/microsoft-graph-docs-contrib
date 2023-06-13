---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingAppointment()
request_body.@odata_type = '#microsoft.graph.bookingAppointment'

end_date_time = DateTimeTimeZone()
end_date_time.@odata_type = '#microsoft.graph.dateTimeTimeZone'

end_date_time.date_time = '2018-05-06T12:30:00.0000000+00:00'

end_date_time.time_zone = 'UTC'


request_body.end_date_time = end_date_time
start_date_time = DateTimeTimeZone()
start_date_time.@odata_type = '#microsoft.graph.dateTimeTimeZone'

start_date_time.date_time = '2018-05-06T12:00:00.0000000+00:00'

start_date_time.time_zone = 'UTC'


request_body.start_date_time = start_date_time



result = await client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').appointments.by_appointment_id('bookingAppointment-id').patch(request_body = request_body)


```