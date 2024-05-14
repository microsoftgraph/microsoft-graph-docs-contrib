---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.catalogs.item.resources.resources_request_builder import ResourcesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourcesRequestBuilder.ResourcesRequestBuilderGetQueryParameters(
		filter = "originId eq 'e93e24d1-2b65-4a6c-a1dd-654a12225487'",
)

request_configuration = ResourcesRequestBuilder.ResourcesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').resources.get(request_configuration = request_configuration)


```