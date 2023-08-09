---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OutlookTaskFolder()
request_body.name = 'Charity work'




result = await client.me.outlook.task_folders.by_task_folder_id('outlookTaskFolder-id').patch(request_body = request_body)


```