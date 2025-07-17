---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.booking_customer import BookingCustomer
from msgraph.generated.models.physical_address import PhysicalAddress
from msgraph.generated.models.phone import Phone
from msgraph.generated.models.phone_type import PhoneType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingCustomer(
	odata_type = "#microsoft.graph.bookingCustomer",
	display_name = "Joni Sherman",
	email_address = "jonis@relecloud.com",
	addresses = [
		PhysicalAddress(
			street = "4567 Main Street",
			city = "Buffalo",
			state = "NY",
			country_or_region = "USA",
			postal_code = "98052",
			additional_data = {
					"post_office_box" : "",
					"type" : "home",
			}
		),
		PhysicalAddress(
			street = "4570 Main Street",
			city = "Buffalo",
			state = "NY",
			country_or_region = "USA",
			postal_code = "98054",
			additional_data = {
					"post_office_box" : "",
					"type" : "business",
			}
		),
	],
	phones = [
		Phone(
			number = "206-555-0100",
			type = PhoneType.Home,
		),
		Phone(
			number = "206-555-0200",
			type = PhoneType.Business,
		),
	],
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').customers.post(request_body)


```