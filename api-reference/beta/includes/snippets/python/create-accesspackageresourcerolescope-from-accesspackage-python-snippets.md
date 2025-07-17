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
		origin_id = "Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca",
		display_name = "Member",
		origin_system = "AadGroup",
		access_package_resource = AccessPackageResource(
			id = "1d08498d-72a1-403f-8511-6b1f875746a0",
			resource_type = "O365 Group",
			origin_id = "b31fe1f1-3651-488f-bd9a-1711887fd4ca",
			origin_system = "AadGroup",
		),
	),
	access_package_resource_scope = AccessPackageResourceScope(
		origin_id = "b31fe1f1-3651-488f-bd9a-1711887fd4ca",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').access_package_resource_role_scopes.post(request_body)


```