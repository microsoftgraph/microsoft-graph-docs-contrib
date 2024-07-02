---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.federation_configurations.item.identity_provider_base_item_request_builder import IdentityProviderBaseItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = IdentityProviderBaseItemRequestBuilder.IdentityProviderBaseItemRequestBuilderGetQueryParameters(
		filter = "domains/any(x: x/id eq 'contoso.com')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.federation_configurations.by_identity_provider_base_id('identityProviderBase-id').get(request_configuration = request_configuration)


```