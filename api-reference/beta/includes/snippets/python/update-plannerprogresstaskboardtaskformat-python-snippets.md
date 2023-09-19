---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PlannerProgressTaskBoardTaskFormat(
	order_hint = "A6673H Ejkl!",
)

request_configuration = ProgressTaskBoardFormatRequestBuilder.ProgressTaskBoardFormatRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.tasks.by_task_id('plannerTask-id').progres_task_board_format.patch(body = request_body, request_configuration = request_configuration)


```