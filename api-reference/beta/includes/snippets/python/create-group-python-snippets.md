---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Self help community for golf",
	display_name = "Golf Assist",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "golfassist",
	security_enabled = False,
)

result = await graph_client.groups.post(request_body)


```