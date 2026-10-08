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
	template_id = "d209f6fa-3839-4d70-b83f-60b1c64d0e8f",
	values = [
		SettingValue(
			name = "EnableMIPLabels",
			value = "true",
		),
	],
)

result = await graph_client.group_settings.post(request_body)


```