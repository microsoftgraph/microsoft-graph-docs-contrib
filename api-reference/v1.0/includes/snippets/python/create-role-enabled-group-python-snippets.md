---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.description = 'Group assignable to a role'

request_body.display_name = 'Role assignable group'

request_body.GroupTypes(['Unified', ])

request_body.is_assignable_to_role = True

request_body.mail_enabled = True

request_body.security_enabled = True

request_body.mail_nickname = 'contosohelpdeskadministrators'

additional_data = [
'owners@odata_bind' => ['https://graph.microsoft.com/v1.0/users/99e44b05-c10b-4e95-a523-e2732bbaba1e', ],
'members@odata_bind' => ['https://graph.microsoft.com/v1.0/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0', 'https://graph.microsoft.com/v1.0/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e', ],
];
request_body.additional_data(additional_data)





result = await client.groups.post(request_body = request_body)


```