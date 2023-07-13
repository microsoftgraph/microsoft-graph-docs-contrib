---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.description = 'Self help community for golf'

request_body.display_name = 'Golf Assist'

request_body.GroupTypes(['Unified', ])

request_body.mail_enabled = True

request_body.mail_nickname = 'golfassist'

request_body.security_enabled = False




result = await client.groups.post(request_body = request_body)


```