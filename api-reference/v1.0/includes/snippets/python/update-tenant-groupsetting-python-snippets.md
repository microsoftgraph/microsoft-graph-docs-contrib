---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GroupSetting(
	values = [
		SettingValue(
			name = "AllowToAddGuests",
			value = "false",
		),
	]
)

result = await graph_client.group_settings.by_group_setting_id('groupSetting-id').patch(body = request_body)


```