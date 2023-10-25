---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Group(
	description = "Self help community for golf",
	display_name = "Golf Assist",
	group_types = [
		"Unified",
	]
	mail_enabled = True,
	mail_nickname = "golfassist",
	security_enabled = False,
)

result = await graph_client.groups.post(body = request_body)


```