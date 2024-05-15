---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.service_principals.service_principals_request_builder import ServicePrincipalsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalsRequestBuilder.ServicePrincipalsRequestBuilderGetQueryParameters(
		search = "\"displayName:Team\"",
		count = True,
		select = ["accountEnabled","displayName","publisherName","servicePrincipalType","signInAudience"],
)

request_configuration = ServicePrincipalsRequestBuilder.ServicePrincipalsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.service_principals.get(request_configuration = request_configuration)


```