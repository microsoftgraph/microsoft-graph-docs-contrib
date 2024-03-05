---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authorization_policy import AuthorizationPolicy
from msgraph.generated.models.default_user_role_permissions import DefaultUserRolePermissions

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	default_user_role_permissions = DefaultUserRolePermissions(
		allowed_to_create_apps = False,
	),
)

result = await graph_client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body)


```