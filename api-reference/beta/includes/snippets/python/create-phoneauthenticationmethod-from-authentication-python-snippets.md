---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PhoneAuthenticationMethod()
request_body.phone_number = '+1 2065555555'

request_body.phonetype(AuthenticationPhoneType.Mobile('authenticationphonetype.mobile'))




result = await client.users.by_user_id('user-id').authentication.phone_methods.post(request_body = request_body)


```