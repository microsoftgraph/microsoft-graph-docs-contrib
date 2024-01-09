---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = BookingAppointment(
	odata_type = "#microsoft.graph.bookingAppointment",
	end = DateTimeTimeZone(
		odata_type = "#microsoft.graph.dateTimeTimeZone",
		date_time = "2018-05-06T12:30:00.0000000+00:00",
		time_zone = "UTC",
	),
	invoice_date = DateTimeTimeZone(
		odata_type = "#microsoft.graph.dateTimeTimeZone",
		date_time = "2018-05-06T12:30:00.0000000+00:00",
		time_zone = "UTC",
	),
	start = DateTimeTimeZone(
		odata_type = "#microsoft.graph.dateTimeTimeZone",
		date_time = "2018-05-06T12:00:00.0000000+00:00",
		time_zone = "UTC",
	),
)

result = await graph_client.booking_businesses.by_booking_business_id('bookingBusiness-id').appointments.by_booking_appointment_id('bookingAppointment-id').patch(request_body)


```