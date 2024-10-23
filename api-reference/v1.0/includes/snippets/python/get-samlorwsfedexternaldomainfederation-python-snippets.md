---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.directory.federation_configurations.item.identity_provider_base_item_request_builder import IdentityProviderBaseItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = IdentityProviderBaseItemRequestBuilder.IdentityProviderBaseItemRequestBuilderGetQueryParameters(
		filter = "domains/any(x: x/id eq 'contoso.com')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.federation_configurations.by_identity_provider_base_id('identityProviderBase-id').get(request_configuration = request_configuration)


```