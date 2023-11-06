---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerPlan(
	title = "title-value",
)

request_configuration = PlannerPlanItemRequestBuilder.PlannerPlanItemRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').patch(request_body, request_configuration = request_configuration)


```