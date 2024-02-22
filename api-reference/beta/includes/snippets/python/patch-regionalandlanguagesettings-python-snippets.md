---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.regional_and_language_settings import RegionalAndLanguageSettings
from msgraph.generated.models.locale_info import LocaleInfo

graph_client = GraphServiceClient(credentials, scopes)

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