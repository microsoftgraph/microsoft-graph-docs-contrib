---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.business_scenario_task import BusinessScenarioTask
from msgraph_beta.generated.models.business_scenario_group_target import BusinessScenarioGroupTarget
from msgraph_beta.generated.models.planner_task_target_kind import PlannerTaskTargetKind
from msgraph_beta.generated.models.business_scenario_properties import BusinessScenarioProperties
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BusinessScenarioTask(
	title = "Customer order #12010",
	percent_complete = 0,
	priority = 5,
	target = BusinessScenarioGroupTarget(
		odata_type = "microsoft.graph.businessScenarioGroupTarget",
		task_target_kind = PlannerTaskTargetKind.Group,
		group_id = "7a339254-4b2b-4410-b295-c890a16776ee",
	),
	business_scenario_properties = BusinessScenarioProperties(
		external_object_id = "Order#12010",
		external_context_id = "Warehouse-CA-36",
		external_object_version = "000001",
		web_url = "https://ordertracking.contoso.com/view?id=12010",
		external_bucket_id = "deliveryBucket",
	),
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.tasks.post(request_body)


```