---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddKeyPostRequestBody()
key_credential = KeyCredential()
key_credential.type = 'X509CertAndPassword'

key_credential.usage = 'Sign'

key_credential.Key(base64_decode('MIIDYDCCAki...'))


request_body.key_credential = key_credential
password_credential = PasswordCredential()
password_credential.secret_text = 'MKTr0w1...'


request_body.password_credential = password_credential
request_body.proof = 'eyJ0eXAiOiJ...'




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').add_key.post(request_body = request_body)


```