---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTaskGroup(
	name = "Personal Tasks",
)

result = await graph_client.me.outlook.task_groups.by_outlook_task_group_id('outlookTaskGroup-id').patch(request_body)


```