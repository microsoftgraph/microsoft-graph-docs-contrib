---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.entitlementManagement.accessPackageCatalogs.access_package_catalogs_request_builder import AccessPackageCatalogsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageCatalogsRequestBuilder.AccessPackageCatalogsRequestBuilderGetQueryParameters(
		filter = "(displayName eq 'General')",
)

request_configuration = AccessPackageCatalogsRequestBuilder.AccessPackageCatalogsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.get(request_configuration = request_configuration)


```