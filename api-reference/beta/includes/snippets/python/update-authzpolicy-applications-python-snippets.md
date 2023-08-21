---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthorizationPolicy()
default_user_role_permissions = DefaultUserRolePermissions()
default_user_role_permissions.allowed_to_create_apps = False


request_body.default_user_role_permissions = default_user_role_permissions



result = await client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body = request_body)


```