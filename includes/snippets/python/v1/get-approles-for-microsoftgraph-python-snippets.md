---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ServicePrincipalsRequestBuilder.ServicePrincipalsRequestBuilderGetQueryParameters(
		filter = "displayName eq 'Microsoft Graph'",
		select = ["id","displayName","appId","appRoles"],
)

request_configuration = ServicePrincipalsRequestBuilder.ServicePrincipalsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.service_principals.get(request_configuration = request_configuration)


```