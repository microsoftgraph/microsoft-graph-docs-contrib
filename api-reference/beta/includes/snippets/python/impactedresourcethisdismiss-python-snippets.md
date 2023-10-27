---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DismissPostRequestBody(
	dismiss_reason = "Application is no longer needed.",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').impacted_resources.by_impacted_resource_id('impactedResource-id').dismiss.post(request_body)


```