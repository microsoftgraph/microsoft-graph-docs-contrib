---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group

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