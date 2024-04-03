---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.entitlementManagement.catalogs.catalogs_request_builder import CatalogsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CatalogsRequestBuilder.CatalogsRequestBuilderGetQueryParameters(
		filter = "(displayName eq 'General')",
)

request_configuration = CatalogsRequestBuilder.CatalogsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.get(request_configuration = request_configuration)


```