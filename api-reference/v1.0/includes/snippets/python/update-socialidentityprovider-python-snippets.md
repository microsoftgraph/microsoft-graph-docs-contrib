---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SocialIdentityProvider(
	odata_type = "#microsoft.graph.socialIdentityProvider",
	client_secret = "1111111111111",
)

result = await graph_client.identity.identity_providers.by_identity_provider_id('identityProviderBase-id').patch(body = request_body)


```