---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetPlanPostRequestBody(
	target = BusinessScenarioGroupTarget(
		odata_type = "microsoft.graph.businessScenarioGroupTarget",
		task_target_kind = PlannerTaskTargetKind.Group,
		group_id = "7a339254-4b2b-4410-b295-c890a16776ee",
	),
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.get_plan.post(request_body)


```