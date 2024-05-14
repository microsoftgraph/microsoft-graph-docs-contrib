---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.service_announcement.health_overviews.item.service_health_item_request_builder import ServiceHealthItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServiceHealthItemRequestBuilder.ServiceHealthItemRequestBuilderGetQueryParameters(
		expand = ["issues"],
)

request_configuration = ServiceHealthItemRequestBuilder.ServiceHealthItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.service_announcement.health_overviews.by_service_health_id('serviceHealth-id').get(request_configuration = request_configuration)


```