---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.rejected_senders.ref.ref_request_builder import RefRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RefRequestBuilder.RefRequestBuilderDeleteQueryParameters(
		id = "https://graph.microsoft.com/v1.0/users/{user-id}",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.groups.by_group_id('group-id').rejected_senders.ref.delete(request_configuration = request_configuration)


```