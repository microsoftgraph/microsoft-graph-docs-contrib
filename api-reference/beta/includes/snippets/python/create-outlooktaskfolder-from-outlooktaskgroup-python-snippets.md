---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookTaskFolder()
request_body.name = 'Cooking'




result = await client.me.outlook.task_groups.by_task_group_id('outlookTaskGroup-id').task_folders.post(request_body = request_body)


```