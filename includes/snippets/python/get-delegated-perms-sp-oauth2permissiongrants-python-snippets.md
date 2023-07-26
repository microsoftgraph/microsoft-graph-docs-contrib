---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = Oauth2PermissionGrantsRequestBuilder.Oauth2PermissionGrantsRequestBuilderGetQueryParameters(
		filter = "clientId eq 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94' and principalId eq '3fbd929d-8c56-4462-851e-0eb9a7b3a2a5' and consentType eq 'Principal'",
)

request_configuration = Oauth2PermissionGrantsRequestBuilder.Oauth2PermissionGrantsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.oauth2_permission_grants.get(request_configuration = request_configuration)


```