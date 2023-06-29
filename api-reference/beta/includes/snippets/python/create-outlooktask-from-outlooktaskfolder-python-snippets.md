---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookTask()
request_body.subject = 'Shop for dinner'

start_date_time = DateTimeTimeZone()
start_date_time.date_time = '2016-04-23T18:00:00'

start_date_time.time_zone = 'Pacific Standard Time'


request_body.start_date_time = start_date_time
due_date_time = DateTimeTimeZone()
due_date_time.date_time = '2016-04-25T13:00:00'

due_date_time.time_zone = 'Pacific Standard Time'


request_body.due_date_time = due_date_time



result = await client.me.outlook.task_folders.by_task_folder_id('outlookTaskFolder-id').tasks.post(request_body = request_body)


```