---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ContactMergeSuggestions(
	is_enabled = False,
)

result = await graph_client.me.settings.contact_merge_suggestions.patch(request_body)


```