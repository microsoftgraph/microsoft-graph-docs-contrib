---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingAppointment()
request_body.@odata_type = '#microsoft.graph.bookingAppointment'

end = DateTimeTimeZone()
end.@odata_type = '#microsoft.graph.dateTimeTimeZone'

end.date_time = '2018-05-06T12:30:00.0000000+00:00'

end.time_zone = 'UTC'


request_body.end = end
invoice_date = DateTimeTimeZone()
invoice_date.@odata_type = '#microsoft.graph.dateTimeTimeZone'

invoice_date.date_time = '2018-05-06T12:30:00.0000000+00:00'

invoice_date.time_zone = 'UTC'


request_body.invoice_date = invoice_date
start = DateTimeTimeZone()
start.@odata_type = '#microsoft.graph.dateTimeTimeZone'

start.date_time = '2018-05-06T12:00:00.0000000+00:00'

start.time_zone = 'UTC'


request_body.start = start



result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').appointments.by_appointment_id('bookingAppointment-id').patch(request_body = request_body)


```