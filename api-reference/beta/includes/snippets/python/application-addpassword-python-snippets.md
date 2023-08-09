---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddPasswordPostRequestBody()
password_credential = PasswordCredential()
password_credential.display_name = 'Password friendly name'


request_body.password_credential = password_credential



result = await client.applications.by_application_id('application-id').add_password.post(request_body = request_body)


```