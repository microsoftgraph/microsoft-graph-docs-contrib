---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
request_body.account_enabled = True

request_body.display_name = 'MyTestUser1'

request_body.mail_nickname = 'MyTestUser1'

request_body.user_principal_name = 'MyTestUser1@contoso.com'

password_profile = PasswordProfile()
password_profile.force_change_password_next_sign_in = True

password_profile.password = 'Contoso1234'


request_body.password_profile = password_profile



result = await client.users.post(request_body = request_body)


```