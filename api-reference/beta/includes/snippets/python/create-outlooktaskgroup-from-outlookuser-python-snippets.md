---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.outlook_task_group import OutlookTaskGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTaskGroup(
	name = "Leisure tasks",
)

result = await graph_client.me.outlook.task_groups.post(request_body)


```