---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest(
	catalog_id = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
	request_type = "AdminAdd",
	justification = "",
	access_package_resource = AccessPackageResource(
		display_name = "Marketing resources",
		description = "Marketing group",
		resource_type = "AadGroup",
		origin_id = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.acces_package_resource_requests.post(body = request_body)


```