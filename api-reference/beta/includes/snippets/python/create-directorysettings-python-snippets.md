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