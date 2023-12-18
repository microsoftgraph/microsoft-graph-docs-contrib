---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityProvider(
	additional_data = {
			"response_type" : "id_token",
	}
)

result = await graph_client.identity_providers.by_identity_provider_id('identityProvider-id').patch(request_body)


```