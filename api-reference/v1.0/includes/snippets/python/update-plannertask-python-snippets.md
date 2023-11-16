---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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
)

request_configuration = PlannerTaskItemRequestBuilder.PlannerTaskItemRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').patch(request_body, request_configuration = request_configuration)


```