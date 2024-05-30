---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.social_identity_provider import SocialIdentityProvider

graph_client = GraphServiceClient(credentials, scopes)

request_body = SocialIdentityProvider(
	odata_type = "microsoft.graph.socialIdentityProvider",
	display_name = "Login with Amazon",
	identity_provider_type = "Amazon",
	client_id = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	client_secret = "000000000000",
)

result = await graph_client.identity.identity_providers.post(request_body)


```