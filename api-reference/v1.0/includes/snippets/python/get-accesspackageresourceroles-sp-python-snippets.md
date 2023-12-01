---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourceRolesRequestBuilder.ResourceRolesRequestBuilderGetQueryParameters(
		filter = "(originSystem eq 'SharePointOnline' and resource/id eq 'dcc3f966-a73c-48e2-8c1d-bcac775488c3')",
		expand = ["resource"],
)

request_configuration = ResourceRolesRequestBuilder.ResourceRolesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').resource_roles.get(request_configuration = request_configuration)


```