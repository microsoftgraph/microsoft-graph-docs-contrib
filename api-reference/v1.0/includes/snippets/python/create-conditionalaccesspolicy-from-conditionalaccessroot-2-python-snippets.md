---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConditionalAccessPolicy()
request_body.display_name = 'Block access to EXO non-trusted regions.'

request_body.state(ConditionalAccessPolicyState.Enabled('conditionalaccesspolicystate.enabled'))

conditions = ConditionalAccessConditionSet()
conditions.ClientAppTypes([conditions.conditionalaccessclientapp(ConditionalAccessClientApp.All('conditionalaccessclientapp.all'))
])

conditionsapplications = ConditionalAccessApplications()
conditionsapplications.IncludeApplications(['00000002-0000-0ff1-ce00-000000000000', ])


conditions.applications = conditionsapplications
conditionsusers = ConditionalAccessUsers()
conditionsusers.IncludeGroups(['ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba', ])


conditions.users = conditionsusers
conditionslocations = ConditionalAccessLocations()
conditionslocations.IncludeLocations(['198ad66e-87b3-4157-85a3-8a7b51794ee9', ])


conditions.locations = conditionslocations

request_body.conditions = conditions
grant_controls = ConditionalAccessGrantControls()
grant_controls.operator = 'OR'

grant_controls.BuiltInControls([grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.Block('conditionalaccessgrantcontrol.block'))
])


request_body.grant_controls = grant_controls



result = await client.identity.conditional_access.policies.post(request_body = request_body)


```