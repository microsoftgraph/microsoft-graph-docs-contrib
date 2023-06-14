---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ServicePrincipalRequestBuilder.ServicePrincipalRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","appRoles","oauth2PermissionScopes"],
)

request_configuration = ServicePrincipalRequestBuilder.ServicePrincipalRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.service_principals.by_service_principal_id('servicePrincipal-id').get(request_configuration = request_configuration)


```