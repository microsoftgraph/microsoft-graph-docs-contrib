---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Self help community for library",
	display_name = "Library Assist",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "library",
	security_enabled = False,
)

result = await graph_client.groups.post(request_body)


```