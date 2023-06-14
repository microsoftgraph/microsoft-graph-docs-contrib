---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = B2cAuthenticationMethodsPolicy()
request_body.is_email_password_authentication_enabled = False

request_body.is_user_name_authentication_enabled = True

request_body.is_phone_one_time_password_authentication_enabled = True




result = await client.policies.b2c_authentication_method_policy.patch(request_body = request_body)


```