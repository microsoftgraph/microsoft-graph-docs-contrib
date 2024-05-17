---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.recommendations.item.impactedresources.item.dismiss.dismiss_post_request_body import DismissPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DismissPostRequestBody(
	dismiss_reason = "Application is no longer needed.",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').impacted_resources.by_impacted_resource_id('impactedResource-id').dismiss.post(request_body)


```