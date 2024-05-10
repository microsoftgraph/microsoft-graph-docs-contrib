---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.solutions.business_scenarios.item.planner.tasks.tasks_request_builder import TasksRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = TasksRequestBuilder.TasksRequestBuilderGetQueryParameters(
		filter = "businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'",
)

request_configuration = TasksRequestBuilder.TasksRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.tasks.get(request_configuration = request_configuration)


```