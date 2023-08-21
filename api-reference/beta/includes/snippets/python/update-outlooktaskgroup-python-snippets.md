---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookTaskGroup()
request_body.name = 'Personal Tasks'




result = await client.me.outlook.task_groups.by_task_group_id('outlookTaskGroup-id').patch(request_body = request_body)


```