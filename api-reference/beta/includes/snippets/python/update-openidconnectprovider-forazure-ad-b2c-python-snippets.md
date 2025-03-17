---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.open_id_connect_identity_provider import OpenIdConnectIdentityProvider
from msgraph_beta.generated.models.open_id_connect_response_types import OpenIdConnectResponseTypes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OpenIdConnectIdentityProvider(
	odata_type = "#microsoft.graph.openIdConnectIdentityProvider",
	response_type = OpenIdConnectResponseTypes.Id_token,
)

result = await graph_client.identity.identity_providers.by_identity_provider_base_id('identityProviderBase-id').patch(request_body)


```