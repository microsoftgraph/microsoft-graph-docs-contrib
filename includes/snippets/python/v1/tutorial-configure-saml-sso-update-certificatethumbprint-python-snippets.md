---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	preferred_token_signing_key_thumbprint = "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```