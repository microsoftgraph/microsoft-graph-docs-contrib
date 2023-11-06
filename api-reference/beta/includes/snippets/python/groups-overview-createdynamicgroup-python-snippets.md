---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Marketing department folks",
	display_name = "Marketing department",
	group_types = [
		"Unified",
		"DynamicMembership",
	],
	mail_enabled = True,
	mail_nickname = "marketing",
	security_enabled = False,
	membership_rule = "user.department -eq \"Marketing\"",
	membership_rule_processing_state = "on",
)

result = await graph_client.groups.post(request_body)


```