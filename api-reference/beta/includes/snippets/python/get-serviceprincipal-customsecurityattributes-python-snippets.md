---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.servicePrincipals.item.service_principal_item_request_builder import ServicePrincipalItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalItemRequestBuilder.ServicePrincipalItemRequestBuilderGetQueryParameters(
		select = ["customSecurityAttributes"],
)

request_configuration = ServicePrincipalItemRequestBuilder.ServicePrincipalItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').get(request_configuration = request_configuration)


```