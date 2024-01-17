---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ActivityBasedTimeoutPolicy(
	definition = [
		"definition-value",
	],
	display_name = "displayName-value",
	is_organization_default = True,
)

result = await graph_client.policies.activity_based_timeout_policies.by_activity_based_timeout_policy_id('activityBasedTimeoutPolicy-id').patch(request_body)


```