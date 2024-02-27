---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.pendingAccessReviewInstances.pending_access_review_instances_request_builder import PendingAccessReviewInstancesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = PendingAccessReviewInstancesRequestBuilder.PendingAccessReviewInstancesRequestBuilderGetQueryParameters(
		expand = ["definition"],
		top = 100,
		skip = 0,
)

request_configuration = PendingAccessReviewInstancesRequestBuilder.PendingAccessReviewInstancesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.pending_access_review_instances.get(request_configuration = request_configuration)


```