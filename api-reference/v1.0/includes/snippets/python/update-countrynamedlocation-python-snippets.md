---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CountryNamedLocation(
	odata_type = "#microsoft.graph.countryNamedLocation",
	display_name = "Updated named location without unknown countries and regions",
	countries_and_regions = [
		"CA",
		"IN",
	],
	include_unknown_countries_and_regions = False,
)

result = await graph_client.identity.conditional_access.named_locations.by_named_location_id('namedLocation-id').patch(request_body)


```