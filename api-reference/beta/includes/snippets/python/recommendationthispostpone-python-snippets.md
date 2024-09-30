---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory.recommendations.item.postpone.postpone_post_request_body import PostponePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PostponePostRequestBody(
	postpone_until_date_time = "2023-02-01T02:53:00Z",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').postpone.post(request_body)


```