---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MoveToCatalogPostRequestBody(
	catalog_id = "3301434b-99bd-46be-923b-d762c30c8e8b",
)

await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').move_to_catalog.post(request_body)


```