---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerBucketTaskBoardTaskFormat(
	order_hint = "A6673H Ejkl!",
)

request_configuration = BucketTaskBoardFormatRequestBuilder.BucketTaskBoardFormatRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').bucket_task_board_format.patch(request_body, request_configuration = request_configuration)


```