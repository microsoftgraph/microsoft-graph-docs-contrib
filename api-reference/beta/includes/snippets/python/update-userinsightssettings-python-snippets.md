---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserInsightsSettings(
	is_enabled = False,
)

result = await graph_client.users.by_user_id('user-id').settings.item_insights.patch(request_body)


```