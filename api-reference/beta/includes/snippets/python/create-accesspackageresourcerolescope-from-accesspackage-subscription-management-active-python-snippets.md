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
		origin_id = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
		display_name = "Access Review Operator Service Role",
		description = "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
		access_package_resource = AccessPackageResource(
			id = "b09a0288-a83e-4ae6-8a53-bc09aeb966ea",
			description = "Dev",
			display_name = "Dev",
			resource_type = "Subscription",
			origin_id = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
			origin_system = "AzureResources",
		),
		origin_system = "AzureResources",
		type = RoleType.Active,
	),
	access_package_resource_scope = AccessPackageResourceScope(
		id = "c66c1e22-1093-46fb-a8a8-c0e334113ca4",
		description = "Root",
		display_name = "Root",
		is_root_scope = True,
		origin_system = "AzureResources",
		origin_id = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').access_package_resource_role_scopes.post(request_body)


```