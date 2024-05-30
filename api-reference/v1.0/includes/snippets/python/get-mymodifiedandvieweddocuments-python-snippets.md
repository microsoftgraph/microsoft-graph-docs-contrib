---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.insights.used.used_request_builder import UsedRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsedRequestBuilder.UsedRequestBuilderGetQueryParameters(
		orderby = ["LastUsed/LastAccessedDateTime desc"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.insights.used.get(request_configuration = request_configuration)


```