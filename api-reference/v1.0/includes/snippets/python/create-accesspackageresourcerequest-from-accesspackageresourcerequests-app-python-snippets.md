---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessPackageResourceRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	resource = AccessPackageResource(
		origin_id = "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
		origin_system = "AadApplication",
	),
	catalog = AccessPackageCatalog(
		id = "beedadfe-01d5-4025-910b-84abb9369997",
	),
)

result = await graph_client.identity_governance.entitlement_management.resource_requests.post(body = request_body)


```