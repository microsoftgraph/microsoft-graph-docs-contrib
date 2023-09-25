---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OutlookTaskFolder(
	name = "Charity work",
)

result = await graph_client.me.outlook.task_folders.by_task_folder_id('outlookTaskFolder-id').patch(body = request_body)


```