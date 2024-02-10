---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authorization_policy import AuthorizationPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorizationPolicy(
	permission_grant_policy_ids_assigned_to_default_user_role = [
		"managePermissionGrantsForSelf.microsoft-user-default-low",
	],
)

result = await graph_client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body)


```