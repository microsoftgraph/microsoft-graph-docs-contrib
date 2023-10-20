---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PronounsSettings(
	is_enabled_in_organization = True,
)

result = await graph_client.admin.people.pronouns.patch(body = request_body)


```