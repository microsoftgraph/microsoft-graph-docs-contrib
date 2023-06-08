---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetPlanPostRequestBody()
target = BusinessScenarioTaskTargetBase()
target.@odata_type = 'microsoft.graph.businessScenarioGroupTarget'

target.tasktargetkind(PlannerTaskTargetKind.Group('plannertasktargetkind.group'))

additional_data = [
'group_id' => '7a339254-4b2b-4410-b295-c890a16776ee', 
];
target.additional_data(additional_data)



request_body.target = target



result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.get_plan.post(request_body = request_body)


```