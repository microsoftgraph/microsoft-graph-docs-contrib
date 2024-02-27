---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.task_configuration.get()


```