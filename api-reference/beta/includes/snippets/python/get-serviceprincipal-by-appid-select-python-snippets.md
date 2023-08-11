---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"],
)

request_configuration = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.service_principals(app_id='{app_id}'.get(request_configuration = request_configuration)


```