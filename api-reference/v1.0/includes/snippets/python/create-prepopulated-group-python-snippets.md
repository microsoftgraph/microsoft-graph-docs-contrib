---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.description = 'Group with designated owner and members'

request_body.display_name = 'Operations group'

request_body.GroupTypes([])

request_body.mail_enabled = False

request_body.mail_nickname = 'operations2019'

request_body.security_enabled = True

additional_data = [
'owners@odata_bind' => ['https://graph.microsoft.com/v1.0/users/26be1845-4119-4801-a799-aea79d09f1a2', ],
'members@odata_bind' => ['https://graph.microsoft.com/v1.0/users/ff7cb387-6688-423c-8188-3da9532a73cc', 'https://graph.microsoft.com/v1.0/users/69456242-0067-49d3-ba96-9de6f2728e14', ],
];
request_body.additional_data(additional_data)





result = await client.groups.post(request_body = request_body)


```