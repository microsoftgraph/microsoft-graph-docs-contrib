---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_address import ItemAddress
from msgraph_beta.generated.models.physical_address import PhysicalAddress
from msgraph_beta.generated.models.physical_address_type import PhysicalAddressType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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