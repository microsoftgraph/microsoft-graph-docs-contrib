---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

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