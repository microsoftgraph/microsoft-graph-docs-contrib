---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DirectorySetting(
	values = [
		SettingValue(
			name = "CustomBlockedWordsList",
			value = "Contoso",
		),
	]
)

result = await graph_client.settings.by_setting_id('directorySetting-id').patch(body = request_body)


```