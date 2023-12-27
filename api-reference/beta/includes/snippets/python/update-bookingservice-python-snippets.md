---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = BookingService(
	odata_type = "#microsoft.graph.bookingService",
	default_duration = "PT30M",
)

result = await graph_client.booking_businesses.by_booking_business_id('bookingBusiness-id').services.by_booking_service_id('bookingService-id').patch(request_body)


```