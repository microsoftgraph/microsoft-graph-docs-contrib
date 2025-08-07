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
		origin_id = "EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18",
		display_name = "Eligible Member",
		origin_system = "AadGroup",
		access_package_resource = AccessPackageResource(
			id = "b86a1828-3171-409e-8343-32a224f324a0",
			resource_type = "O365 Group",
			origin_id = "bcfae74a-91a6-46e9-99bf-89d6487cc3f3",
			origin_system = "AadGroup",
		),
	),
	access_package_resource_scope = AccessPackageResourceScope(
		origin_id = "bcfae74a-91a6-46e9-99bf-89d6487cc3f3",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').access_package_resource_role_scopes.post(request_body)


```