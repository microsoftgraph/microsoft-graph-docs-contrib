---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.entitlementManagement.catalogs.item.resourceRoles.resource_roles_request_builder import ResourceRolesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourceRolesRequestBuilder.ResourceRolesRequestBuilderGetQueryParameters(
		filter = "(originSystem eq 'AadGroup' and resource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')",
		expand = ["resource"],
)

request_configuration = ResourceRolesRequestBuilder.ResourceRolesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').resource_roles.get(request_configuration = request_configuration)


```