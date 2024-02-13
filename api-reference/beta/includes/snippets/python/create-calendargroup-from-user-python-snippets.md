---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.calendar_group import CalendarGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = CalendarGroup(
	name = "Personal events",
)

result = await graph_client.me.calendar_groups.post(request_body)


```