---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddTokenSigningCertificatePostRequestBody()
request_body.display_name = 'CN=customDisplayName'

request_body.endDateTime = DateTime('2024-01-25T00:00:00Z')




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').add_token_signing_certificate.post(request_body = request_body)


```