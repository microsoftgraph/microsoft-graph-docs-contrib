---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.access_package_catalogs.item.access_package_resources.access_package_resources_request_builder import AccessPackageResourcesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageResourcesRequestBuilder.AccessPackageResourcesRequestBuilderGetQueryParameters(
		filter = "resourceType eq 'Application'",
		expand = ["accessPackageResourceScopes"],
)

request_configuration = AccessPackageResourcesRequestBuilder.AccessPackageResourcesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resources.get(request_configuration = request_configuration)


```