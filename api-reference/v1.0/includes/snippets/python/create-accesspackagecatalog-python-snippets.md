---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_catalog import AccessPackageCatalog

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageCatalog(
	display_name = "sales",
	description = "for employees working with sales and outside sales partners",
	state = AccessPackageCatalogState.Published,
	is_externally_visible = True,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.post(request_body)


```