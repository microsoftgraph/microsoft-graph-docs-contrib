---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authorization_policy import AuthorizationPolicy
from msgraph_beta.generated.models.default_user_role_permissions import DefaultUserRolePermissions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthorizationPolicy(
	default_user_role_permissions = DefaultUserRolePermissions(
		allowed_to_create_apps = False,
	),
)

result = await graph_client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body)


```