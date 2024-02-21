---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.permission_grant_condition_set import PermissionGrantConditionSet

graph_client = GraphServiceClient(credentials, scopes)

request_body = PermissionGrantConditionSet(
	permission_type = PermissionType.Delegated,
	certified_client_applications_only = True,
)

result = await graph_client.policies.permission_grant_policies.by_permission_grant_policy_id('permissionGrantPolicy-id').includes.post(request_body)


```