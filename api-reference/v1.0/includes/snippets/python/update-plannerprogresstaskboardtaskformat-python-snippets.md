---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.tasks.item.progress_task_board_format.progress_task_board_format_request_builder import ProgressTaskBoardFormatRequestBuilder
from msgraph.generated.models.planner_progress_task_board_task_format import PlannerProgressTaskBoardTaskFormat

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerProgressTaskBoardTaskFormat(
	order_hint = "A6673H Ejkl!",
)

request_configuration = ProgressTaskBoardFormatRequestBuilder.ProgressTaskBoardFormatRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').progress_task_board_format.patch(request_body, request_configuration = request_configuration)


```