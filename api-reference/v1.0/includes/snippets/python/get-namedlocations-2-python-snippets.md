---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.conditional_access.named_locations.named_locations_request_builder import NamedLocationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = NamedLocationsRequestBuilder.NamedLocationsRequestBuilderGetQueryParameters(
		filter = "isof('microsoft.graph.ipNamedLocation')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.conditional_access.named_locations.get(request_configuration = request_configuration)


```