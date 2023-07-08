---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BusinessScenarioTask()
request_body.@odata_type = '#microsoft.graph.businessScenarioTask'

request_body.title = 'Customer order #12010'

request_body.PercentComplete = 20

request_body.Priority = 1

business_scenario_properties = BusinessScenarioProperties()
business_scenario_properties.external_object_version = '000003'


request_body.business_scenario_properties = business_scenario_properties



result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.tasks.by_task_id('businessScenarioTask-id').patch(request_body = request_body)


```