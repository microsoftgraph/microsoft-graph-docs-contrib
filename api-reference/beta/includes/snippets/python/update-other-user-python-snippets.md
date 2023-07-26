---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
request_body.BusinessPhones(['+1 425 555 0109', ])

request_body.office_location = '18/2111'

authorization_info = AuthorizationInfo()
authorization_info.CertificateUserIds(['5432109876543210@mil', ])


request_body.authorization_info = authorization_info



result = await client.users.by_user_id('user-id').patch(request_body = request_body)


```