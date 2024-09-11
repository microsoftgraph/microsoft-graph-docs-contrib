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
	display_name = "Updated named location without unknown countries and regions",
	countries_and_regions = [
		"CA",
		"IN",
	],
	include_unknown_countries_and_regions = False,
)

result = await graph_client.identity.conditional_access.named_locations.by_named_location_id('namedLocation-id').patch(request_body)


```