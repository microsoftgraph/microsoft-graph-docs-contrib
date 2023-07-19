---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PermissionGrantPolicy()
request_body.display_name = 'Custom permission grant policy'




result = await client.policies.permission_grant_policies.by_permission_grant_policie_id('permissionGrantPolicy-id').patch(request_body = request_body)


```