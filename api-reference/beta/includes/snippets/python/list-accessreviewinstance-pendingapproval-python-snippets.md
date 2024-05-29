---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.pending_access_review_instances.pending_access_review_instances_request_builder import PendingAccessReviewInstancesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = PendingAccessReviewInstancesRequestBuilder.PendingAccessReviewInstancesRequestBuilderGetQueryParameters(
		expand = ["definition"],
		top = 100,
		skip = 0,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.pending_access_review_instances.get(request_configuration = request_configuration)


```