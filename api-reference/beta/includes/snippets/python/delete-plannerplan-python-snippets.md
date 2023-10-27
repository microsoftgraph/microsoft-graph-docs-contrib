---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = PlannerPlanItemRequestBuilder.PlannerPlanItemRequestBuilderDeleteRequestConfiguration(
headers = {
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').delete(request_configuration = request_configuration)


```