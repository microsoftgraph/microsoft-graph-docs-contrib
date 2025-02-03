---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.booking_business import BookingBusiness
from msgraph_beta.generated.models.physical_address import PhysicalAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingBusiness(
	display_name = "Fourth Coffee",
	address = PhysicalAddress(
		post_office_box = "P.O. Box 123",
		street = "4567 Main Street",
		city = "Buffalo",
		state = "NY",
		country_or_region = "USA",
		postal_code = "98052",
	),
	phone = "206-555-0100",
	email = "manager@fourthcoffee.com",
	web_site_url = "https://www.fourthcoffee.com",
	default_currency_iso = "USD",
)

result = await graph_client.solutions.booking_businesses.post(request_body)


```