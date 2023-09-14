---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PlannerPlan(
	title = "title-value",
)

request_configuration = PlannerPlanRequestBuilder.PlannerPlanRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.plans.by_plan_id('plannerPlan-id').patch(body = request_body, request_configuration = request_configuration)


```