---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageCatalog(
	display_name = "sales",
	description = "for employees working with sales and outside sales partners",
	is_externally_visible = True,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.post(request_body)


```