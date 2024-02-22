---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.directory_setting import DirectorySetting
from msgraph.generated.models.setting_value import SettingValue

graph_client = GraphServiceClient(credentials, scopes)

request_body = DirectorySetting(
	template_id = "62375ab9-6b52-47ed-826b-58e47e0e304b",
	values = [
		SettingValue(
			name = "GuestUsageGuidelinesUrl",
			value = "https://privacy.contoso.com/privacystatement",
		),
		SettingValue(
			name = "EnableMSStandardBlockedWords",
			value = "true",
		),
		SettingValue(
			name = "EnableMIPLabels",
			value = "true",
		),
		SettingValue(
			name = "PrefixSuffixNamingRequirement",
			value = "[Contoso-][GroupName]",
		),
	],
)

result = await graph_client.settings.post(request_body)


```