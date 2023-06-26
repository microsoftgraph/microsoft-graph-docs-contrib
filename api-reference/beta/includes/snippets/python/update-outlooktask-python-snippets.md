---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookTask()
due_date_time = DateTimeTimeZone()
due_date_time.date_time = '2016-05-06T16:00:00'

due_date_time.time_zone = 'Eastern Standard Time'


request_body.due_date_time = due_date_time


request_configuration = OutlookTaskRequestBuilder.OutlookTaskRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Eastern Standard Time\"",
}

)


result = await client.me.outlook.tasks.by_task_id('outlookTask-id').patch(request_body = request_body, request_configuration = request_configuration)


```