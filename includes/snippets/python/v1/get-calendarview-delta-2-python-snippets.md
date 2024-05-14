---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.calendar_view.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		skiptoken = "R0usmcCM996atia_s",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "odata.maxpagesize=2")


result = await graph_client.me.calendar_view.delta.get(request_configuration = request_configuration)


```