---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.conditional_access.named_locations.named_locations_request_builder import NamedLocationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = NamedLocationsRequestBuilder.NamedLocationsRequestBuilderGetQueryParameters(
		filter = "microsoft.graph.countryNamedLocation/countriesAndRegions/any(c: c eq 'CA')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.named_locations.get(request_configuration = request_configuration)


```