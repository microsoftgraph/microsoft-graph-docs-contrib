---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerPlan()
request_body.title = 'title-value'



request_configuration = PlannerPlanRequestBuilder.PlannerPlanRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.plans.by_plan_id('plannerPlan-id').patch(request_body = request_body, request_configuration = request_configuration)


```