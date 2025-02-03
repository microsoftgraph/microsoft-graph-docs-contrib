---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.booking_service import BookingService
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingService(
	odata_type = "#microsoft.graph.bookingService",
	default_duration = "PT30M",
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').services.by_booking_service_id('bookingService-id').patch(request_body)


```