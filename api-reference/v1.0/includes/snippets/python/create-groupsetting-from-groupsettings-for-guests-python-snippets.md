---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.group_setting import GroupSetting
from msgraph.generated.models.setting_value import SettingValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GroupSetting(
	template_id = "08d542b9-071f-4e16-94b0-74abb372e3d9",
	values = [
		SettingValue(
			name = "AllowToAddGuests",
			value = "false",
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').settings.post(request_body)


```