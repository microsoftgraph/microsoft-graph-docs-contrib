---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ServicePrincipal()
request_body.preferred_single_sign_on_mode = 'saml'




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body = request_body)


```