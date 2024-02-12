---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_resource_role_scope import AccessPackageResourceRoleScope
from msgraph.generated.models.access_package_resource_role import AccessPackageResourceRole
from msgraph.generated.models.access_package_resource import AccessPackageResource
from msgraph.generated.models.access_package_resource_scope import AccessPackageResourceScope

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRoleScope(
	role = AccessPackageResourceRole(
		id = "748f8431-c7c6-404d-8564-df67aa8cfc5e",
		display_name = "Member",
		origin_system = "AadGroup",
		origin_id = "Member_0282e19d-bf41-435d-92a4-99bab93af305",
		resource = AccessPackageResource(
			id = "b16e0e71-17b4-4ebd-a3cd-8a468542e418",
			display_name = "example group",
			description = "a group whose members are to be assigned via an access package",
			origin_id = "0282e19d-bf41-435d-92a4-99bab93af305",
			origin_system = "AadGroup",
		),
	),
	scope = AccessPackageResourceScope(
		id = "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c",
		display_name = "Root",
		description = "Root Scope",
		origin_id = "0282e19d-bf41-435d-92a4-99bab93af305",
		origin_system = "AadGroup",
		is_root_scope = True,
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').resource_role_scopes.post(request_body)


```