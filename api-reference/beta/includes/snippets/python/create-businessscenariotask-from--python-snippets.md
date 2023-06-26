---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BusinessScenarioTask()
request_body.@odata_type = '#microsoft.graph.businessScenarioTask'

request_body.title = 'Customer order #12010'

request_body.PercentComplete = 0

request_body.Priority = 5

target = BusinessScenarioGroupTarget()
target.@odata_type = 'microsoft.graph.businessScenarioGroupTarget'

target.tasktargetkind(PlannerTaskTargetKind.Group('plannertasktargetkind.group'))

target.group_id = '7a339254-4b2b-4410-b295-c890a16776ee'


request_body.target = target
business_scenario_properties = BusinessScenarioProperties()
business_scenario_properties.external_object_id = 'Order#12010'

business_scenario_properties.external_context_id = 'Warehouse-CA-36'

business_scenario_properties.external_object_version = '000001'

business_scenario_properties.web_url = 'https://ordertracking.contoso.com/view?id=12010'

business_scenario_properties.external_bucket_id = 'deliveryBucket'


request_body.business_scenario_properties = business_scenario_properties



result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.tasks.post(request_body = request_body)


```