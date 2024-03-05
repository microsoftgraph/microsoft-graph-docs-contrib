---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.postpone_post_request_body import PostponePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = PostponePostRequestBody(
	postpone_until_date_time = "2023-02-01T02:53:00Z",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').postpone.post(request_body)


```