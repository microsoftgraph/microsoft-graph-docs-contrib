---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreatePasswordSingleSignOnCredentialsPostRequestBody()
request_body.id = '5793aa3b-cca9-4794-679a240f8b58'

credentials_credential1 = Credential()
credentials_credential1.field_id = 'param_username'

credentials_credential1.value = 'myusername'

credentials_credential1.type = 'username'


credentialsArray []= credentialsCredential1;
credentials_credential2 = Credential()
credentials_credential2.field_id = 'param_password'

credentials_credential2.value = 'pa$$w0rd'

credentials_credential2.type = 'password'


credentialsArray []= credentialsCredential2;
request_body.credentials(credentialsArray)





result = await client.service_principals.by_service_principal_id('servicePrincipal-id').create_password_single_sign_on_credentials.post(request_body = request_body)


```