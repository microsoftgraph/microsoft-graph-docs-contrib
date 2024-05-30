---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.custom_authentication_extensions.custom_authentication_extensions_request_builder import CustomAuthenticationExtensionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = CustomAuthenticationExtensionsRequestBuilder.CustomAuthenticationExtensionsRequestBuilderGetQueryParameters(
		filter = "isOf('microsoft.graph.onTokenIssuanceStartCustomExtension')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.custom_authentication_extensions.get(request_configuration = request_configuration)


```