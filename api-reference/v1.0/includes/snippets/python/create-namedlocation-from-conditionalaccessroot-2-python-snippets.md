---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.country_named_location import CountryNamedLocation

graph_client = GraphServiceClient(credentials, scopes)

request_body = CountryNamedLocation(
	odata_type = "#microsoft.graph.countryNamedLocation",
	display_name = "Named location with unknown countries and regions",
	countries_and_regions = [
		"US",
		"GB",
	],
	include_unknown_countries_and_regions = True,
)

result = await graph_client.identity.conditional_access.named_locations.post(request_body)


```