---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.social_identity_provider import SocialIdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SocialIdentityProvider(
	odata_type = "microsoft.graph.socialIdentityProvider",
	display_name = "Login with Amazon",
	identity_provider_type = "Amazon",
	client_id = "00001111-aaaa-2222-bbbb-3333cccc4444",
	client_secret = "42*****96",
)

result = await graph_client.identity.identity_providers.post(request_body)


```