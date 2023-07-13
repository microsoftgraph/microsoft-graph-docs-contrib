---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRoleScope()
access_package_resource_role = AccessPackageResourceRole()
access_package_resource_role.origin_id = 'Member_e93e24d1-2b65-4a6c-a1dd-654a12225487'

access_package_resource_role.display_name = 'Member'

access_package_resource_role.origin_system = 'AadGroup'

access_package_resource_roleaccess_package_resource = AccessPackageResource()
access_package_resource_roleaccess_package_resource.id = '4a1e21c5-8a76-4578-acb1-641160e076e8'

access_package_resource_roleaccess_package_resource.resource_type = 'Security Group'

access_package_resource_roleaccess_package_resource.origin_id = 'e93e24d1-2b65-4a6c-a1dd-654a12225487'

access_package_resource_roleaccess_package_resource.origin_system = 'AadGroup'


access_package_resource_role.access_package_resource = access_package_resource_roleaccess_package_resource

request_body.access_package_resource_role = access_package_resource_role
access_package_resource_scope = AccessPackageResourceScope()
access_package_resource_scope.origin_id = 'e93e24d1-2b65-4a6c-a1dd-654a12225487'

access_package_resource_scope.origin_system = 'AadGroup'


request_body.access_package_resource_scope = access_package_resource_scope



result = await client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').acces_package_resource_role_scopes.post(request_body = request_body)


```