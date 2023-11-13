---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRoleScope(
	role = AccessPackageResourceRole(
		id = "6646a29e-da03-49f6-bcd9-dec124492de3",
		display_name = "Contributors",
		description = None,
		origin_system = "SharePointOnline",
		origin_id = "4",
		resource = AccessPackageResource(
			id = "53c71803-a0a8-4777-aecc-075de8ee3991",
		),
	),
	scope = AccessPackageResourceScope(
		id = "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
		display_name = "Root",
		description = "Root Scope",
		origin_id = "https://contoso.sharepoint.com/portals/Community",
		origin_system = "SharePointOnline",
		is_root_scope = True,
	),
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').resource_role_scopes.post(request_body)


```