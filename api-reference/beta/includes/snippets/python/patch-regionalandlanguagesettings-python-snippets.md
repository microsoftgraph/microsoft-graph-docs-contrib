---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = RegionalAndLanguageSettings(
	authoring_languages = [
		LocaleInfo(
			locale = "en-US",
		),
		LocaleInfo(
			locale = "es-MX",
		),
	]
	default_regional_format = LocaleInfo(
		locale = "en-US",
	),
)

result = await graph_client.me.settings.regional_and_language_settings.patch(body = request_body)


```