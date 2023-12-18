---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MoveToContainerPostRequestBody(
	container = PlannerPlanContainer(
		container_id = "groupId",
		type = PlannerContainerType.Group,
	),
)

request_configuration = MoveToContainerRequestBuilder.MoveToContainerRequestBuilderPostRequestConfiguration(
headers = {
		'If-Match' : "\"string\"",
}

)

result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').move_to_container.post(request_body, request_configuration = request_configuration)


```