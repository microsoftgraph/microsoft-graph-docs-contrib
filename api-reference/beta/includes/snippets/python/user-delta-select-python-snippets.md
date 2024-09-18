---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		select = ["displayName","jobTitle","mobilePhone"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.delta.get(request_configuration = request_configuration)


```