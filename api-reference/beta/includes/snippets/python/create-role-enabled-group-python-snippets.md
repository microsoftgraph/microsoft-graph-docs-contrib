---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Group assignable to a role",
	display_name = "Role assignable group",
	group_types = [
		"Unified",
	],
	is_assignable_to_role = True,
	mail_enabled = True,
	security_enabled = True,
	mail_nickname = "contosohelpdeskadministrators",
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/beta/users/99e44b05-c10b-4e95-a523-e2732bbaba1e",
			],
			"members@odata_bind" : [
				"https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0",
				"https://graph.microsoft.com/beta/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
			],
	}
)

result = await graph_client.groups.post(request_body)


```