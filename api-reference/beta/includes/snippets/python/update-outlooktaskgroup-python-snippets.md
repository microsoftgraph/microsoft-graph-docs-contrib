---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OutlookTaskGroup(
	name = "Personal Tasks",
)

result = await graph_client.me.outlook.task_groups.by_task_group_id('outlookTaskGroup-id').patch(body = request_body)


```