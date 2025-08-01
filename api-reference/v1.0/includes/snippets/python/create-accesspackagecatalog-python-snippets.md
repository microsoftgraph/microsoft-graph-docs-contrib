---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_catalog import AccessPackageCatalog
from msgraph.generated.models.access_package_catalog_state import AccessPackageCatalogState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageCatalog(
	display_name = "sales",
	description = "for employees working with sales and outside sales partners",
	state = AccessPackageCatalogState.Published,
	is_externally_visible = True,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.post(request_body)


```