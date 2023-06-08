---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EmailAuthenticationMethod()
request_body.email_address = 'kim@contoso.com'




result = await client.users.by_user_id('user-id').authentication.email_methods.by_email_method_id('emailAuthenticationMethod-id').patch(request_body = request_body)


```