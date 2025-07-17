---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_resource_role_scope import AccessPackageResourceRoleScope
from msgraph_beta.generated.models.access_package_resource_role import AccessPackageResourceRole
from msgraph_beta.generated.models.access_package_resource import AccessPackageResource
from msgraph_beta.generated.models.access_package_resource_scope import AccessPackageResourceScope
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageResourceRoleScope(
	access_package_resource_role = AccessPackageResourceRole(
		origin_id = "4",
		origin_system = "SharePointOnline",
		access_package_resource = AccessPackageResource(
			id = "53c71803-a0a8-4777-aecc-075de8ee3991",
		),
	),
	access_package_resource_scope = AccessPackageResourceScope(
		id = "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
		origin_id = "https://microsoft.sharepoint.com/portals/Community",
		origin_system = "SharePointOnline",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').access_package_resource_role_scopes.post(request_body)


```