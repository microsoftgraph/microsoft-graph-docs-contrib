---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.booking_business import BookingBusiness
from msgraph.generated.models.booking_scheduling_policy import BookingSchedulingPolicy

graph_client = GraphServiceClient(credentials, scopes)

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

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').patch(request_body)


```