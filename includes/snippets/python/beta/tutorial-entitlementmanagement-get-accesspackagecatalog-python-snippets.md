---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageCatalogsRequestBuilder.AccessPackageCatalogsRequestBuilderGetQueryParameters(
		filter = "(displayName eq 'General')",
)

request_configuration = AccessPackageCatalogsRequestBuilder.AccessPackageCatalogsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.get(request_configuration = request_configuration)


```