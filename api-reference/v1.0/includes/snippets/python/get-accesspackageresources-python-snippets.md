---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourcesRequestBuilder.ResourcesRequestBuilderGetQueryParameters(
		expand = ["scopes"],
)

request_configuration = ResourcesRequestBuilder.ResourcesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').resources.get(request_configuration = request_configuration)


```