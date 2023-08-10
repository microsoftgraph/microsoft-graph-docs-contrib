---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ResetPasswordPostRequestBody()
request_body.new_password = 'Cuyo5459'




result = await client.users.by_user_id('user-id').authentication.methods.by_method_id('authenticationMethod-id').reset_password.post(request_body = request_body)


```