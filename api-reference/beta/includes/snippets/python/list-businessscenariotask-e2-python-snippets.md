---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TasksRequestBuilder.TasksRequestBuilderGetQueryParameters(
		filter = "businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'",
)

request_configuration = TasksRequestBuilder.TasksRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.tasks.get(request_configuration = request_configuration)


```