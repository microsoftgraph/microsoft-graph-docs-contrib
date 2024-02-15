---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "IT Helpdesk to support Contoso employees",
	display_name = "IT Helpdesk (User)",
	mail_enabled = False,
	mail_nickname = "userHelpdesk",
	security_enabled = True,
	is_assignable_to_role = True,
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			],
			"members@odata_bind" : [
				"https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
				"https://graph.microsoft.com/v1.0/users/7146daa8-1b4b-4a66-b2f7-cf593d03c8d2",
			],
	}
)

result = await graph_client.groups.post(request_body)


```