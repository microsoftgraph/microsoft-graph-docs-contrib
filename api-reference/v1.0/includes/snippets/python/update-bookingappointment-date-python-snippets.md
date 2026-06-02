---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.booking_appointment import BookingAppointment
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingAppointment(
	odata_type = "#microsoft.graph.bookingAppointment",
	additional_data = {
			"end" : {
					"@odata_type" : "#microsoft.graph.dateTimeTimeZone",
					"date_time" : "2018-05-06T12:30:00.0000000+00:00",
					"time_zone" : "UTC",
			},
			"start" : {
					"@odata_type" : "#microsoft.graph.dateTimeTimeZone",
					"date_time" : "2018-05-06T12:00:00.0000000+00:00",
					"time_zone" : "UTC",
			},
	}
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').appointments.by_booking_appointment_id('bookingAppointment-id').patch(request_body)


```