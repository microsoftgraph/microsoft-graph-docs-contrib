---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetStaffAvailabilityPostRequestBody(
	staff_ids = [
		"311a5454-08b2-4560-ba1c-f715e938cb79",
	],
	start_date_time = DateTimeTimeZone(
		date_time = "2022-01-25T00:00:00",
		time_zone = "India Standard Time",
	),
	end_date_time = DateTimeTimeZone(
		date_time = "2022-01-26T17:00:00",
		time_zone = "Pacific Standard Time",
	),
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').get_staff_availability.post(request_body)


```