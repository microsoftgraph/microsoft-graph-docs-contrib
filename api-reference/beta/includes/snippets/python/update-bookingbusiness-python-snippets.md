---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BookingBusiness(
	email = "admin@fabrikam.com",
	scheduling_policy = BookingSchedulingPolicy(
		time_slot_interval = "PT60M",
		minimum_lead_time = "P1D",
		maximum_advance = "P30D",
		send_confirmations_to_owner = True,
		allow_staff_selection = True,
	),
)

result = await graph_client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').patch(body = request_body)


```