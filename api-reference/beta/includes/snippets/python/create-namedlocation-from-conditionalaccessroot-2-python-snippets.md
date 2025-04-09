---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.country_named_location import CountryNamedLocation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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