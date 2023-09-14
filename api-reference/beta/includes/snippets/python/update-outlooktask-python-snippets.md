---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OutlookTask(
	due_date_time = DateTimeTimeZone(
		date_time = "2016-05-06T16:00:00",
		time_zone = "Eastern Standard Time",
	),
)

request_configuration = OutlookTaskRequestBuilder.OutlookTaskRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Eastern Standard Time\"",
}

)

result = await graph_client.me.outlook.tasks.by_task_id('outlookTask-id').patch(body = request_body, request_configuration = request_configuration)


```