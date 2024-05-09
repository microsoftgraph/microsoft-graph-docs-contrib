---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.catalogs.item.resource_roles.resource_roles_request_builder import ResourceRolesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourceRolesRequestBuilder.ResourceRolesRequestBuilderGetQueryParameters(
		filter = "(originSystem eq 'AadGroup' and displayName eq 'Member' and resource/id eq '274a1e21c5-8a76-4578-acb1-641160e076e')",
		expand = ["resource"],
)

request_configuration = ResourceRolesRequestBuilder.ResourceRolesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').resource_roles.get(request_configuration = request_configuration)


```