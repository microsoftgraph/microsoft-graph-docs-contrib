---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = OutlookTaskRequestBuilder.OutlookTaskRequestBuilderGetRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)


result = await client.me.outlook.tasks.by_task_id('outlookTask-id').get(request_configuration = request_configuration)


```