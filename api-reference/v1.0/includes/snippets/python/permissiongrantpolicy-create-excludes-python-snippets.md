---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PermissionGrantConditionSet(
	permission_type = PermissionType.Delegated,
	resource_application = "00000003-0000-0000-c000-000000000000",
)

result = await graph_client.policies.permission_grant_policies.by_permission_grant_policie_id('permissionGrantPolicy-id').excludes.post(body = request_body)


```