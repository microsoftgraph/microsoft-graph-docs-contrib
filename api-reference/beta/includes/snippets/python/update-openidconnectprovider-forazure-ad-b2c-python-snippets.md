---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SocialIdentityProvider(
	odata_type = "#microsoft.graph.socialIdentityProvider",
	additional_data = {
			"response_type" : "id_token",
	}
)

result = await graph_client.identity.identity_providers.by_identity_provider_base_id('identityProviderBase-id').patch(request_body)


```