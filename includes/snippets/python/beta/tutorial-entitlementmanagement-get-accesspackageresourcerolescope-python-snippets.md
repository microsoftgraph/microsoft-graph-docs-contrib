---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRoleScope(
	access_package_resource_role = AccessPackageResourceRole(
		origin_id = "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487",
		display_name = "Member",
		origin_system = "AadGroup",
		access_package_resource = AccessPackageResource(
			id = "4a1e21c5-8a76-4578-acb1-641160e076e8",
			resource_type = "Security Group",
			origin_id = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
			origin_system = "AadGroup",
		),
	),
	access_package_resource_scope = AccessPackageResourceScope(
		origin_id = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').acces_package_resource_role_scopes.post(body = request_body)


```