---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.description = 'Marketing group'

request_body.display_name = 'Marketing resources'

request_body.mail_enabled = False

request_body.mail_nickname = 'markres'

request_body.security_enabled = True




result = await client.groups.post(request_body = request_body)


```