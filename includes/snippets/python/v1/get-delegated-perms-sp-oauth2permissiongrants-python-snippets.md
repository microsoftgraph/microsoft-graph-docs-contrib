---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.oauth2PermissionGrants.oauth2_permission_grants_request_builder import Oauth2PermissionGrantsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = Oauth2PermissionGrantsRequestBuilder.Oauth2PermissionGrantsRequestBuilderGetQueryParameters(
		filter = "clientId eq 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94' and principalId eq '3fbd929d-8c56-4462-851e-0eb9a7b3a2a5' and consentType eq 'Principal'",
)

request_configuration = Oauth2PermissionGrantsRequestBuilder.Oauth2PermissionGrantsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.oauth2_permission_grants.get(request_configuration = request_configuration)


```