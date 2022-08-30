---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.entitlement_management.access_package_catalogs.item.access_package_resources.access_package_resources_request_builder import AccessPackageResourcesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageResourcesRequestBuilder.AccessPackageResourcesRequestBuilderGetQueryParameters(
		filter = "resourceType eq 'Application'",
		expand = ["accessPackageResourceScopes"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resources.get(request_configuration = request_configuration)


```