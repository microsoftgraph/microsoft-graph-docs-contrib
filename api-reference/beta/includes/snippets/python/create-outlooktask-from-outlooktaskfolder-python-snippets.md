---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTask(
	subject = "Shop for dinner",
	start_date_time = DateTimeTimeZone(
		date_time = "2016-04-23T18:00:00",
		time_zone = "Pacific Standard Time",
	),
	due_date_time = DateTimeTimeZone(
		date_time = "2016-04-25T13:00:00",
		time_zone = "Pacific Standard Time",
	),
)

result = await graph_client.me.outlook.task_folders.by_outlook_task_folder_id('outlookTaskFolder-id').tasks.post(request_body)


```