---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessPackageResourceRolesRequestBuilder.AccessPackageResourceRolesRequestBuilderGetQueryParameters(
		filter = "(originSystem eq 'AadGroup' and accessPackageResource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')",
		expand = ["accessPackageResource"],
)

request_configuration = AccessPackageResourceRolesRequestBuilder.AccessPackageResourceRolesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.acce_package_catalogs.by_acce_package_catalog_id('accessPackageCatalog-id').acces_package_resource_roles.get(request_configuration = request_configuration)


```