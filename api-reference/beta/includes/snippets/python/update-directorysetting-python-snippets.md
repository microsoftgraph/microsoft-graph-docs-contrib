---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.directory_setting import DirectorySetting
from msgraph_beta.generated.models.setting_value import SettingValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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