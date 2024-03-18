---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.tasks.by_business_scenario_task_id('businessScenarioTask-id').delete()


```