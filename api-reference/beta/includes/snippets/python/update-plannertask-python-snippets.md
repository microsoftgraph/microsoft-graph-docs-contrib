---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.tasks.item.planner_task_item_request_builder import PlannerTaskItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.planner_task import PlannerTask
from msgraph_beta.generated.models.planner_assignments import PlannerAssignments
from msgraph_beta.generated.models.planner_assignment import PlannerAssignment
from msgraph_beta.generated.models.planner_applied_categories import PlannerAppliedCategories
from msgraph_beta.generated.models.planner_task_recurrence import PlannerTaskRecurrence
from msgraph_beta.generated.models.planner_recurrence_schedule import PlannerRecurrenceSchedule
from msgraph_beta.generated.models.recurrence_pattern import RecurrencePattern
from msgraph_beta.generated.models.recurrence_pattern_type import RecurrencePatternType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerTask(
	assignments = PlannerAssignments(
		additional_data = {
				"fbab97d0-4932-4511-b675-204639209557" : {
						"@odata_type" : "#microsoft.graph.plannerAssignment",
						"order_hint" : "N9917 U2883!",
				},
		}
	),
	applied_categories = PlannerAppliedCategories(
		additional_data = {
				"category3" : True,
				"category4" : False,
		}
	),
	recurrence = PlannerTaskRecurrence(
		schedule = PlannerRecurrenceSchedule(
			pattern = RecurrencePattern(
				type = RecurrencePatternType.Daily,
				interval = 3,
			),
			pattern_start_date_time = "2022-02-22T02:10:33Z",
		),
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').patch(request_body, request_configuration = request_configuration)


```