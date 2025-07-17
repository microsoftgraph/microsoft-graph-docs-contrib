---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.booking_customer import BookingCustomer
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingCustomer(
	display_name = "Adele",
	email_address = "adele@relecloud.com",
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').customers.by_booking_customer_id('bookingCustomer-id').patch(request_body)


```