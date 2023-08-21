---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PermissionGrantConditionSet()
request_body.permissiontype(PermissionType.Delegated('permissiontype.delegated'))

request_body.certified_client_applications_only = True




result = await client.policies.permission_grant_policies.by_permission_grant_policie_id('permissionGrantPolicy-id').includes.post(request_body = request_body)


```