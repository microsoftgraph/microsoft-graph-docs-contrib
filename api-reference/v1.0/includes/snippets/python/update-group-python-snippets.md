---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = Group(
	description = "Library Assist",
	display_name = "Library Assist",
	group_types = [
		"Unified",
	],
	mail_enabled = True,
	mail_nickname = "library-help",
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```