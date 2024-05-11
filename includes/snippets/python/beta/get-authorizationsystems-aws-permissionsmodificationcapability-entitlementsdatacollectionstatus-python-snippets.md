---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.external.authorization_systems.authorization_systems_request_builder import AuthorizationSystemsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AuthorizationSystemsRequestBuilder.AuthorizationSystemsRequestBuilderGetQueryParameters(
		filter = "authorizationSystemType eq 'aws' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'",
)

request_configuration = AuthorizationSystemsRequestBuilder.AuthorizationSystemsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.external.authorization_systems.get(request_configuration = request_configuration)


```