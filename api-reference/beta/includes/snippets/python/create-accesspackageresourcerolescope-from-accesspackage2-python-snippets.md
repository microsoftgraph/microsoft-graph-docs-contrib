---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRoleScope()
access_package_resource_role = AccessPackageResourceRole()
access_package_resource_role.origin_id = '4'

access_package_resource_role.origin_system = 'SharePointOnline'

access_package_resource_roleaccess_package_resource = AccessPackageResource()
access_package_resource_roleaccess_package_resource.id = '53c71803-a0a8-4777-aecc-075de8ee3991'


access_package_resource_role.access_package_resource = access_package_resource_roleaccess_package_resource

request_body.access_package_resource_role = access_package_resource_role
access_package_resource_scope = AccessPackageResourceScope()
access_package_resource_scope.id = '5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33'

access_package_resource_scope.origin_id = 'https://microsoft.sharepoint.com/portals/Community'

access_package_resource_scope.origin_system = 'SharePointOnline'


request_body.access_package_resource_scope = access_package_resource_scope



result = await client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').acces_package_resource_role_scopes.post(request_body = request_body)


```