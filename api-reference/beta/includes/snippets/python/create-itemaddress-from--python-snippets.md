---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_address import ItemAddress
from msgraph.generated.models.physical_address import PhysicalAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemAddress(
	display_name = "Home",
	detail = PhysicalAddress(
		type = PhysicalAddressType.Home,
		post_office_box = None,
		street = "221B Baker Street",
		city = "London",
		state = None,
		country_or_region = "United Kingdom",
		postal_code = "E14 3TD",
	),
)

result = await graph_client.me.profile.addresses.post(request_body)


```