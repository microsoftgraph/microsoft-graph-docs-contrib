---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.description = 'IT Helpdesk to support Contoso employees'

request_body.display_name = 'IT Helpdesk (User)'

request_body.mail_enabled = False

request_body.mail_nickname = 'userHelpdesk'

request_body.security_enabled = True

request_body.is_assignable_to_role = True

additional_data = [
'owners@odata_bind' => ['https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5', ],
'members@odata_bind' => ['https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5', 'https://graph.microsoft.com/v1.0/users/7146daa8-1b4b-4a66-b2f7-cf593d03c8d2', ],
];
request_body.additional_data(additional_data)





result = await client.groups.post(request_body = request_body)


```