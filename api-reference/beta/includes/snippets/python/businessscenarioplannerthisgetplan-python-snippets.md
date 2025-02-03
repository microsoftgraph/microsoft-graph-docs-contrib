---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.businessscenarios.item.planner.get_plan.get_plan_post_request_body import GetPlanPostRequestBody
from msgraph_beta.generated.models.business_scenario_group_target import BusinessScenarioGroupTarget
from msgraph_beta.generated.models.planner_task_target_kind import PlannerTaskTargetKind
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetPlanPostRequestBody(
	target = BusinessScenarioGroupTarget(
		odata_type = "microsoft.graph.businessScenarioGroupTarget",
		task_target_kind = PlannerTaskTargetKind.Group,
		group_id = "7a339254-4b2b-4410-b295-c890a16776ee",
	),
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.get_plan.post(request_body)


```