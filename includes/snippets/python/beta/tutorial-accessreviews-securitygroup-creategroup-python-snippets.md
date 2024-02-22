---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Building security",
	display_name = "Building security",
	group_types = [
	],
	mail_enabled = False,
	mail_nickname = "buildingsecurity",
	security_enabled = True,
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca",
			],
			"members@odata_bind" : [
				"https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6",
				"https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7",
			],
	}
)

result = await graph_client.groups.post(request_body)


```