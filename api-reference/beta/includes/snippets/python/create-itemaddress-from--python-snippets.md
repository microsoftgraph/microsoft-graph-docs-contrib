---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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

result = await graph_client.me.profile.addresses.post(body = request_body)


```