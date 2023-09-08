---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)


request_configuration = PlannerPlanRequestBuilder.PlannerPlanRequestBuilderDeleteRequestConfiguration(
headers = {
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

await graph_client.planner.plans.by_plan_id('plannerPlan-id').delete(request_configuration = request_configuration)


```