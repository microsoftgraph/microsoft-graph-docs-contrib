---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BusinessScenarioTask(
	odata_type = "#microsoft.graph.businessScenarioTask",
	title = "Customer order #12010",
	percent_complete = 20,
	priority = 1,
	business_scenario_properties = BusinessScenarioProperties(
		external_object_version = "000003",
	),
)

result = await graph_client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.tasks.by_task_id('businessScenarioTask-id').patch(body = request_body)


```