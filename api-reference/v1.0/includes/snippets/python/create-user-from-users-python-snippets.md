---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
request_body.account_enabled = True

request_body.display_name = 'Adele Vance'

request_body.mail_nickname = 'AdeleV'

request_body.user_principal_name = 'AdeleV@contoso.onmicrosoft.com'

password_profile = PasswordProfile()
password_profile.force_change_password_next_sign_in = True

password_profile.password = 'xWwvJ]6NMw+bWH-d'


request_body.password_profile = password_profile



result = await client.users.post(request_body = request_body)


```