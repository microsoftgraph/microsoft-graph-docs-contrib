---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.servicePrincipals(appId='{appId}').service_principals_with_app_id_request_builder import ServicePrincipalsWithAppIdRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"],
)

request_configuration = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.service_principals_with_app_id("{appId}").get(request_configuration = request_configuration)


```