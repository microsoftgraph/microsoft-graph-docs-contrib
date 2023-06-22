---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookTask()
request_body.subject = 'Shop for children\'s weekend'

start_date_time = DateTimeTimeZone()
start_date_time.date_time = '2016-05-03T09:00:00'

start_date_time.time_zone = 'Eastern Standard Time'


request_body.start_date_time = start_date_time
due_date_time = DateTimeTimeZone()
due_date_time.date_time = '2016-05-05T16:00:00'

due_date_time.time_zone = 'Eastern Standard Time'


request_body.due_date_time = due_date_time


request_configuration = TasksRequestBuilder.TasksRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)


result = await client.me.outlook.tasks.post(request_body = request_body, request_configuration = request_configuration)


```