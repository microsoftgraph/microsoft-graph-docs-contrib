---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"],
)

request_configuration = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.service_principals_with_app_id("{appId}").get(request_configuration = request_configuration)


```