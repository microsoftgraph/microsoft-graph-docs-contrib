---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.tasks.item.assigned_to_task_board_format.assigned_to_task_board_format_request_builder import AssignedToTaskBoardFormatRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.planner_assigned_to_task_board_task_format import PlannerAssignedToTaskBoardTaskFormat
from msgraph_beta.generated.models.planner_order_hints_by_assignee import PlannerOrderHintsByAssignee
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerAssignedToTaskBoardTaskFormat(
	order_hints_by_assignee = PlannerOrderHintsByAssignee(
		additional_data = {
				"aaa27244-1db4-476a-a5cb-004607466324" : "8566473P 957764Jk!",
		}
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').assigned_to_task_board_format.patch(request_body, request_configuration = request_configuration)


```