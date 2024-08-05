---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_address import ItemAddress
from msgraph_beta.generated.models.physical_address import PhysicalAddress
from msgraph_beta.generated.models.physical_address_type import PhysicalAddressType

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