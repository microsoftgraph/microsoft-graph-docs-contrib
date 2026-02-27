---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conditional_access_policy import ConditionalAccessPolicy
from msgraph_beta.generated.models.conditional_access_condition_set import ConditionalAccessConditionSet
from msgraph_beta.generated.models.risk_level import RiskLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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