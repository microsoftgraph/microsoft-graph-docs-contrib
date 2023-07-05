---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessPackageCatalogsRequestBuilder.AccessPackageCatalogsRequestBuilderGetQueryParameters(
		filter = "(displayName eq 'General')",
)

request_configuration = AccessPackageCatalogsRequestBuilder.AccessPackageCatalogsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.acces_package_catalogs.get(request_configuration = request_configuration)


```