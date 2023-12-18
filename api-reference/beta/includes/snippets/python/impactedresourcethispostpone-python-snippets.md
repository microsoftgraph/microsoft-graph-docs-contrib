---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PostponePostRequestBody(
	postpone_until_date_time = "2023-03-01T09:40:39.0420371Z",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').impacted_resources.by_impacted_resource_id('impactedResource-id').postpone.post(request_body)


```