---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = IdentityProviderBaseItemRequestBuilder.IdentityProviderBaseItemRequestBuilderGetQueryParameters(
		filter = "domains/any(x: x/id eq 'contoso.com')",
)

request_configuration = IdentityProviderBaseItemRequestBuilder.IdentityProviderBaseItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.federation_configurations.by_identity_provider_base_id('identityProviderBase-id').get(request_configuration = request_configuration)


```