---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTaskFolder(
	name = "Cooking",
)

result = await graph_client.me.outlook.task_groups.by_outlook_task_group_id('outlookTaskGroup-id').task_folders.post(request_body)


```