---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.social_identity_provider import SocialIdentityProvider

graph_client = GraphServiceClient(credentials, scopes)

request_body = SocialIdentityProvider(
	odata_type = "#microsoft.graph.socialIdentityProvider",
	additional_data = {
			"response_type" : "id_token",
	}
)

result = await graph_client.identity.identity_providers.by_identity_provider_base_id('identityProviderBase-id').patch(request_body)


```