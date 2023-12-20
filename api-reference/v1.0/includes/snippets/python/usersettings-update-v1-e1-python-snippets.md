---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSettings(
	contribution_to_content_discovery_disabled = True,
)

result = await graph_client.me.settings.patch(request_body)


```