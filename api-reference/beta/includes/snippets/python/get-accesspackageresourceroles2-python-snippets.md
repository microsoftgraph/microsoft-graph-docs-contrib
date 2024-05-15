---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.entitlement_management.access_package_catalogs.item.access_package_resource_roles.access_package_resource_roles_request_builder import AccessPackageResourceRolesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageResourceRolesRequestBuilder.AccessPackageResourceRolesRequestBuilderGetQueryParameters(
		filter = "(originSystem eq 'SharePointOnline' and accessPackageResource/id eq '53c71803-a0a8-4777-aecc-075de8ee3991')",
		select = ["displayName","originId"],
)

request_configuration = AccessPackageResourceRolesRequestBuilder.AccessPackageResourceRolesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resource_roles.get(request_configuration = request_configuration)


```