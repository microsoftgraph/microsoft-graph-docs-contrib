---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessPackageCatalog(
	display_name = "Catalog One",
)

result = await graph_client.identity_governance.entitlement_management.acce_package_catalogs.by_acces_package_catalog_id('accessPackageCatalog-id').patch(body = request_body)


```