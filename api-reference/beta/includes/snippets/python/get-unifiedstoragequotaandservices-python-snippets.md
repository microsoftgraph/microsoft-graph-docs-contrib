---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.settings.storage.quota.quota_request_builder import QuotaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = QuotaRequestBuilder.QuotaRequestBuilderGetQueryParameters(
		expand = ["services"],
)

request_configuration = QuotaRequestBuilder.QuotaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.settings.storage.quota.get(request_configuration = request_configuration)


```