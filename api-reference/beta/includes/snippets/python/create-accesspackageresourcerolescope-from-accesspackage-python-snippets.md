---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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

result = await graph_client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').acces_package_resource_role_scopes.post(body = request_body)


```