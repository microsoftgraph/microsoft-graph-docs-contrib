---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		select = ["displayName","jobTitle","mobilePhone"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "return=minimal")


result = await graph_client.users.delta.get(request_configuration = request_configuration)


```