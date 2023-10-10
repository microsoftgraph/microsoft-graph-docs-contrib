---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = LanguageProficiency(
	allowed_audiences = AllowedAudiences.Organization,
)

result = await graph_client.me.profile.languages.by_language_id('languageProficiency-id').patch(body = request_body)


```