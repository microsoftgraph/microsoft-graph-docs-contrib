---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_resource_role_scope import AccessPackageResourceRoleScope
from msgraph_beta.generated.models.access_package_resource_role import AccessPackageResourceRole
from msgraph_beta.generated.models.access_package_resource import AccessPackageResource
from msgraph_beta.generated.models.role_type import RoleType
from msgraph_beta.generated.models.access_package_resource_scope import AccessPackageResourceScope
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageResourceRoleScope(
	access_package_resource_role = AccessPackageResourceRole(
		id = "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e",
		origin_id = "/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
		display_name = "Access Review Operator Service Role",
		description = "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
		access_package_resource = AccessPackageResource(
			id = "c347ca9b-a9cc-4df9-bc3c-00c8e0297692",
			description = "test-mgmtgroup",
			display_name = "test-mgmtgroup",
			resource_type = "ManagementGroup",
			origin_id = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
			origin_system = "AzureResources",
		),
		origin_system = "AzureResources",
		type = RoleType.Eligible,
	),
	access_package_resource_scope = AccessPackageResourceScope(
		id = "338613b3-b410-4c6d-b5e9-45590bc8a357",
		display_name = "Root",
		description = "Root Scope",
		origin_id = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
		origin_system = "AzureResources",
		is_root_scope = True,
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').access_package_resource_role_scopes.post(request_body)


```