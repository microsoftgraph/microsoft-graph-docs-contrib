---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = DirectorySetting(
	values = [
		SettingValue(
			name = "CustomBlockedWordsList",
			value = "Contoso",
		),
	],
)

result = await graph_client.settings.by_directory_setting_id('directorySetting-id').patch(request_body)


```