---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.service_principals_with_app_id.service_principals_with_app_id_request_builder import ServicePrincipalsWithAppIdRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.service_principals_with_app_id("{appId}").get(request_configuration = request_configuration)


```