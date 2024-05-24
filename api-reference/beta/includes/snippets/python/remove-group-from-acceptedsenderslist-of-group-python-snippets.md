---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.accepted_senders.ref.ref_request_builder import RefRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RefRequestBuilder.RefRequestBuilderDeleteQueryParameters(
		id = "https://graph.microsoft.com/beta/groups/{other-group-id}",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.groups.by_group_id('group-id').accepted_senders.ref.delete(request_configuration = request_configuration)


```