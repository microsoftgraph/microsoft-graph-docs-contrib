---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.solutions.businessscenarios.item.planner.get_plan.get_plan_post_request_body import GetPlanPostRequestBody
from msgraph.generated.models.business_scenario_group_target import BusinessScenarioGroupTarget

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