---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ConditionalAccessPolicy(
	conditions = ConditionalAccessConditionSet(
		sign_in_risk_levels = [
			RiskLevel.High,
			RiskLevel.Medium,
			RiskLevel.Low,
		],
	),
)

result = await graph_client.identity.conditional_access.policies.by_conditional_access_policy_id('conditionalAccessPolicy-id').patch(request_body)


```