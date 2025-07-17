---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devices.devices_request_builder import DevicesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DevicesRequestBuilder.DevicesRequestBuilderGetQueryParameters(
		filter = "extensionAttributes/extensionAttribute1 eq 'BYOD-Device'",
		count = True,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.devices.get(request_configuration = request_configuration)


```