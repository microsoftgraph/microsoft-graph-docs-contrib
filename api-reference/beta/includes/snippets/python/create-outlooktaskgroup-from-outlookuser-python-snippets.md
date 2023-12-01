---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTaskGroup(
	name = "Leisure tasks",
)

result = await graph_client.me.outlook.task_groups.post(request_body)


```