---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ServicePrincipalsRequestBuilder.ServicePrincipalsRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName"],
		filter = "startswith(displayName, 'salesforce')",
)

request_configuration = ServicePrincipalsRequestBuilder.ServicePrincipalsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Authorization' : "Bearer {Token}",
}

)


result = await client.service_principals.get(request_configuration = request_configuration)


```