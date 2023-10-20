---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Group(
	description = "Library Assist",
	display_name = "Library Assist",
	group_types = [
		"Unified",
	]
	mail_enabled = True,
	mail_nickname = "library-help",
)

result = await graph_client.groups.by_group_id('group-id').patch(body = request_body)


```