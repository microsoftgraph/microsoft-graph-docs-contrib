---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConditionalAccessPolicy()
request_body.display_name = 'Policy for risky sign-in'

request_body.state(ConditionalAccessPolicyState.Enabled('conditionalaccesspolicystate.enabled'))

conditions = ConditionalAccessConditionSet()
conditions.SignInRiskLevels([conditions.risklevel(RiskLevel.High('risklevel.high'))
conditions.risklevel(RiskLevel.Medium('risklevel.medium'))
])

conditionsapplications = ConditionalAccessApplications()
conditionsapplications.IncludeApplications(['All', ])


conditions.applications = conditionsapplications
conditionsusers = ConditionalAccessUsers()
conditionsusers.IncludeUsers(['4628e7df-dff3-407c-a08f-75f08c0806dc', ])


conditions.users = conditionsusers

request_body.conditions = conditions
grant_controls = ConditionalAccessGrantControls()
grant_controls.operator = 'OR'

grant_controls.BuiltInControls([grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.Mfa('conditionalaccessgrantcontrol.mfa'))
])


request_body.grant_controls = grant_controls



result = await client.identity.conditional_access.policies.post(request_body = request_body)


```