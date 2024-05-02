---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.recommendations.item.dismiss.dismiss_post_request_body import DismissPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DismissPostRequestBody(
	dismiss_reason = "Recommendations is not relevant for my organization because...",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').dismiss.post(request_body)


```