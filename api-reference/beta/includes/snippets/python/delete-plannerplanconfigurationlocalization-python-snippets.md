---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.localizations.by_planner_plan_configuration_localization_id('plannerPlanConfigurationLocalization-id').delete()


```