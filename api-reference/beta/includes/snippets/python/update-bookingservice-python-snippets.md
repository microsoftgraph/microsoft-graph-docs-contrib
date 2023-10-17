---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BookingService(
	odata_type = "#microsoft.graph.bookingService",
	default_duration = "PT30M",
)

result = await graph_client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').services.by_service_id('bookingService-id').patch(body = request_body)


```