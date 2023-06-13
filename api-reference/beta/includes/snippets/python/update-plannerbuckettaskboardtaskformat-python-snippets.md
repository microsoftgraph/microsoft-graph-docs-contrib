---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerBucketTaskBoardTaskFormat()
request_body.order_hint = 'A6673H Ejkl!'



request_configuration = BucketTaskBoardFormatRequestBuilder.BucketTaskBoardFormatRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.tasks.by_task_id('plannerTask-id').bucket_task_board_format.patch(request_body = request_body, request_configuration = request_configuration)


```