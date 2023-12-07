---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = FeatureRolloutPolicy(
	display_name = "PasswordHashSync Rollout Policy",
	description = "PasswordHashSync Rollout Policy",
	is_enabled = True,
	is_applied_to_organization = False,
)

result = await graph_client.policies.feature_rollout_policies.by_feature_rollout_policy_id('featureRolloutPolicy-id').patch(request_body)


```