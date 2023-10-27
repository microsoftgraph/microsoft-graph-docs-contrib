---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PermissionGrantPolicy(
	display_name = "Custom permission grant policy",
)

result = await graph_client.policies.permission_grant_policies.by_permission_grant_policy_id('permissionGrantPolicy-id').patch(request_body)


```