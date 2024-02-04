---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	default_user_role_permissions = DefaultUserRolePermissions(
		permission_grant_policies_assigned = [
		],
	),
)

result = await graph_client.policies.authorization_policy.patch(request_body)


```