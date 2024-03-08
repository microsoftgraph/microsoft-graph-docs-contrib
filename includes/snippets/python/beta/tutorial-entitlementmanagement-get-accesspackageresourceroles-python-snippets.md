---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.entitlementManagement.accessPackageCatalogs.item.accessPackageResourceRoles.access_package_resource_roles_request_builder import AccessPackageResourceRolesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageResourceRolesRequestBuilder.AccessPackageResourceRolesRequestBuilderGetQueryParameters(
		filter = "(originSystem eq 'AadGroup' and accessPackageResource/id eq '4a1e21c5-8a76-4578-acb1-641160e076e8' and displayName eq 'Member')",
		expand = ["accessPackageResource"],
)

request_configuration = AccessPackageResourceRolesRequestBuilder.AccessPackageResourceRolesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resource_roles.get(request_configuration = request_configuration)


```