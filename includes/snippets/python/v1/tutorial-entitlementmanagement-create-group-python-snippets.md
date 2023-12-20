---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Marketing group",
	display_name = "Marketing resources",
	mail_enabled = False,
	mail_nickname = "markres",
	security_enabled = True,
)

result = await graph_client.groups.post(request_body)


```