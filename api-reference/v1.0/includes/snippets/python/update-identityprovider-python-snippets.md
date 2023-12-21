---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityProvider(
	client_secret = "1111111111111",
)

result = await graph_client.identity_providers.by_identity_provider_id('identityProvider-id').patch(request_body)


```