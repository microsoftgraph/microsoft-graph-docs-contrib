---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.tasks.item.bucket_task_board_format.bucket_task_board_format_request_builder import BucketTaskBoardFormatRequestBuilder
from msgraph.generated.models.planner_bucket_task_board_task_format import PlannerBucketTaskBoardTaskFormat

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerBucketTaskBoardTaskFormat(
	order_hint = "A6673H Ejkl!",
)

request_configuration = BucketTaskBoardFormatRequestBuilder.BucketTaskBoardFormatRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').bucket_task_board_format.patch(request_body, request_configuration = request_configuration)


```