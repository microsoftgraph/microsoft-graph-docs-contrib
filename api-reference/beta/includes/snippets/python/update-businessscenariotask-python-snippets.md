---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.business_scenario_task import BusinessScenarioTask
from msgraph_beta.generated.models.business_scenario_properties import BusinessScenarioProperties
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BusinessScenarioTask(
	title = "Customer order #12010",
	percent_complete = 20,
	priority = 1,
	business_scenario_properties = BusinessScenarioProperties(
		external_object_version = "000003",
	),
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.tasks.by_business_scenario_task_id('businessScenarioTask-id').patch(request_body)


```