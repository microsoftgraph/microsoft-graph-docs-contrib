---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRoleScope()
role = AccessPackageResourceRole()
role.id = '6646a29e-da03-49f6-bcd9-dec124492de3'

role.display_name = 'Contributors'

role.description=null

role.origin_system = 'SharePointOnline'

role.origin_id = '4'

roleresource = AccessPackageResource()
roleresource.id = '53c71803-a0a8-4777-aecc-075de8ee3991'


role.resource = roleresource

request_body.role = role
scope = AccessPackageResourceScope()
scope.id = '5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33'

scope.display_name = 'Root'

scope.description = 'Root Scope'

scope.origin_id = 'https://contoso.sharepoint.com/portals/Community'

scope.origin_system = 'SharePointOnline'

scope.is_root_scope = True


request_body.scope = scope



result = await client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').resource_role_scopes.post(request_body = request_body)


```