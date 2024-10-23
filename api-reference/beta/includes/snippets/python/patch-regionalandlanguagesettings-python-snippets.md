---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.regional_and_language_settings import RegionalAndLanguageSettings
from msgraph_beta.generated.models.locale_info import LocaleInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RegionalAndLanguageSettings(
	authoring_languages = [
		LocaleInfo(
			locale = "en-US",
		),
		LocaleInfo(
			locale = "es-MX",
		),
	],
	default_regional_format = LocaleInfo(
		locale = "en-US",
	),
)

result = await graph_client.me.settings.regional_and_language_settings.patch(request_body)


```