---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = PlannerTaskRequestBuilder.PlannerTaskRequestBuilderDeleteRequestConfiguration(
headers = {
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


await client.planner.tasks.by_task_id('plannerTask-id').delete(request_configuration = request_configuration)


```