---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_catalog import AccessPackageCatalog

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageCatalog(
	display_name = "Catalog One",
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').patch(request_body)


```