---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTask(
	due_date_time = DateTimeTimeZone(
		date_time = "2016-05-06T16:00:00",
		time_zone = "Eastern Standard Time",
	),
)

request_configuration = OutlookTaskItemRequestBuilder.OutlookTaskItemRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Eastern Standard Time\"",
}

)

result = await graph_client.me.outlook.tasks.by_outlook_task_id('outlookTask-id').patch(request_body, request_configuration = request_configuration)


```