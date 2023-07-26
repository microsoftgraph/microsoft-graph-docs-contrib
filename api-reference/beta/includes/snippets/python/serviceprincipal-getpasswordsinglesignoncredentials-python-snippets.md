---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetPasswordSingleSignOnCredentialsPostRequestBody()
request_body.id = '5793aa3b-cca9-4794-679a240f8b58'




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').get_password_single_sign_on_credentials.post(request_body = request_body)


```