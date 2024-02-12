---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.booking_service import BookingService

graph_client = GraphServiceClient(credentials, scopes)

request_body = BookingService(
	odata_type = "#microsoft.graph.bookingService",
	default_duration = "PT30M",
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').services.by_booking_service_id('bookingService-id').patch(request_body)


```