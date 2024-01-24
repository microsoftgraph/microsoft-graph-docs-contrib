---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSettings(
	contribution_to_content_discovery_disabled = True,
)

result = await graph_client.me.settings.patch(request_body)


```