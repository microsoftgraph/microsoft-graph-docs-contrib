---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.external.authorization_systems.authorization_systems_request_builder import AuthorizationSystemsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AuthorizationSystemsRequestBuilder.AuthorizationSystemsRequestBuilderGetQueryParameters(
		filter = "authorizationSystemType eq 'azure' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.external.authorization_systems.get(request_configuration = request_configuration)


```