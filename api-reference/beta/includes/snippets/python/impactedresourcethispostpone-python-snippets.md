---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.recommendations.item.impactedresources.item.postpone.postpone_post_request_body import PostponePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = PostponePostRequestBody(
	postpone_until_date_time = "2023-03-01T09:40:39.0420371Z",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').impacted_resources.by_impacted_resource_id('impactedResource-id').postpone.post(request_body)


```