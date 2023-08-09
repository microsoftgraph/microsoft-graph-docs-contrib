---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConditionalAccessPolicy()
conditions = ConditionalAccessConditionSet()
conditions.SignInRiskLevels([conditions.risklevel(RiskLevel.High('risklevel.high'))
conditions.risklevel(RiskLevel.Medium('risklevel.medium'))
conditions.risklevel(RiskLevel.Low('risklevel.low'))
])


request_body.conditions = conditions



result = await client.identity.conditional_access.policies.by_policie_id('conditionalAccessPolicy-id').patch(request_body = request_body)


```