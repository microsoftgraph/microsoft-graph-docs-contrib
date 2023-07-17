---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WebAccount()
request_body.description = 'My Github contributions!'

request_body.user_id = 'innocenty.popov'

service = ServiceInformation()
service.name = 'GitHub'

service.web_url = 'https://github.com'


request_body.service = service



result = await client.me.profile.web_accounts.post(request_body = request_body)


```