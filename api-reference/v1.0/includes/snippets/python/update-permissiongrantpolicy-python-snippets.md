---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.permission_grant_policy import PermissionGrantPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = PermissionGrantPolicy(
	display_name = "Custom permission grant policy",
)

result = await graph_client.policies.permission_grant_policies.by_permission_grant_policy_id('permissionGrantPolicy-id').patch(request_body)


```