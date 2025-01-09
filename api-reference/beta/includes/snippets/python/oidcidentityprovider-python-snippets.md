---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.oidc_identity_provider import OidcIdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OidcIdentityProvider(
	odata_type = "#microsoft.graph.oidcIdentityProvider",
	display_name = "Contoso",
)

result = await graph_client.identity.identity_providers.by_identity_provider_base_id('identityProviderBase-id').patch(request_body)


```