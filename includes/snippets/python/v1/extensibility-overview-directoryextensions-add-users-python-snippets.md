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

request_body.user_principal_name = 'AdeleV@contoso.com'

password_profile = PasswordProfile()
password_profile.force_change_password_next_sign_in = False

password_profile.password = 'xWwvJ]6NMw+bWH-d'


request_body.password_profile = password_profile
additional_data = [
'extension_b7d8e648520f41d3b9c0fdeb91768a0a_job_group_tracker' => 'JobGroupN', 
];
request_body.additional_data(additional_data)





result = await client.users.post(request_body = request_body)


```