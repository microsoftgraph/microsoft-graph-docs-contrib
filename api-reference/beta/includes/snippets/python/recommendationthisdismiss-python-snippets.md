---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DismissPostRequestBody(
	dismiss_reason = "Recommendations is not relevant for my organization because...",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').dismiss.post(body = request_body)


```