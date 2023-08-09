---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ServicePrincipal()
request_body.preferred_token_signing_key_thumbprint = 'A7D3C4626B8A84FDA868CCC67D274D402FFD0A10'




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body = request_body)


```