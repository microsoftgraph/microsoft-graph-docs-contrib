---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageResourceRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	resource = AccessPackageResource(
		display_name = "Test group",
		origin_id = "8ab659d0-3839-427d-8c54-5ae92f0b3e2e",
		origin_system = "AadGroup",
	),
	catalog = AccessPackageCatalog(
		id = "beedadfe-01d5-4025-910b-84abb9369997",
	),
)

result = await graph_client.identity_governance.entitlement_management.resource_requests.post(request_body)


```