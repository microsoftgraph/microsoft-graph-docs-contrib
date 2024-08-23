---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.settings.storage.quota.quota_request_builder import QuotaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = QuotaRequestBuilder.QuotaRequestBuilderGetQueryParameters(
		expand = ["services"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.settings.storage.quota.get(request_configuration = request_configuration)


```