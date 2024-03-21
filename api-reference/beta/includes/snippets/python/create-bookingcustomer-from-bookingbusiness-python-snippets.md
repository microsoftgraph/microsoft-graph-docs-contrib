---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.booking_customer import BookingCustomer
from msgraph.generated.models.physical_address import PhysicalAddress
from msgraph.generated.models.phone import Phone

graph_client = GraphServiceClient(credentials, scopes)

request_body = BookingCustomer(
	display_name = "Joni Sherman",
	email_address = "jonis@relecloud.com",
	addresses = [
		PhysicalAddress(
			post_office_box = "",
			street = "4567 Main Street",
			city = "Buffalo",
			state = "NY",
			country_or_region = "USA",
			postal_code = "98052",
			type = PhysicalAddressType.Home,
		),
		PhysicalAddress(
			post_office_box = "",
			street = "4570 Main Street",
			city = "Buffalo",
			state = "NY",
			country_or_region = "USA",
			postal_code = "98054",
			type = PhysicalAddressType.Business,
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