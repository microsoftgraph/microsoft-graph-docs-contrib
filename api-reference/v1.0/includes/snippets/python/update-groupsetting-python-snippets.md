---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = GroupSetting(
	values = [
		SettingValue(
			name = "AllowToAddGuests",
			value = "true",
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').settings.by_group_setting_id('groupSetting-id').patch(request_body)


```