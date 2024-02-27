---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').resource_role_scopes.by_access_package_resource_role_scope_id('accessPackageResourceRoleScope-id').delete()


```