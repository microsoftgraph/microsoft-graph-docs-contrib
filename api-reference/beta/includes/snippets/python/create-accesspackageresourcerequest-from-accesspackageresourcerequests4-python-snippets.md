---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest(
	catalog_id = "beedadfe-01d5-4025-910b-84abb9369997",
	request_type = "AdminAdd",
	access_package_resource = AccessPackageResource(
		origin_id = "c6294667-7348-4f5a-be73-9d2c65f574f3",
		origin_system = "AadGroup",
	),
)

result = await graph_client.identity_governance.entitlement_management.acces_package_resource_requests.post(body = request_body)


```