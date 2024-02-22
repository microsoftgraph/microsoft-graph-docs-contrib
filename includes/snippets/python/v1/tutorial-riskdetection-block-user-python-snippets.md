---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conditional_access_policy import ConditionalAccessPolicy
from msgraph.generated.models.conditional_access_condition_set import ConditionalAccessConditionSet
from msgraph.generated.models.risk_level import RiskLevel
from msgraph.generated.models.conditional_access_applications import ConditionalAccessApplications
from msgraph.generated.models.conditional_access_users import ConditionalAccessUsers
from msgraph.generated.models.conditional_access_grant_controls import ConditionalAccessGrantControls
from msgraph.generated.models.conditional_access_grant_control import ConditionalAccessGrantControl

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConditionalAccessPolicy(
	display_name = "Policy for risky sign-in block access",
	state = ConditionalAccessPolicyState.Enabled,
	conditions = ConditionalAccessConditionSet(
		sign_in_risk_levels = [
			RiskLevel.High,
			RiskLevel.Medium,
		],
		applications = ConditionalAccessApplications(
			include_applications = [
				"All",
			],
		),
		users = ConditionalAccessUsers(
			include_users = [
				"4628e7df-dff3-407c-a08f-75f08c0806dc",
			],
		),
	),
	grant_controls = ConditionalAccessGrantControls(
		operator = "OR",
		built_in_controls = [
			ConditionalAccessGrantControl.Block,
		],
	),
)

result = await graph_client.identity.conditional_access.policies.post(request_body)


```