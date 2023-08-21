---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonName()
request_body.display_name = 'Innocenty Popov'

request_body.first = 'Innocenty'

request_body.initials = 'IP'

request_body.last = 'Popov'

request_body.language_tag = 'en-US'

request_body.maiden=null




result = await client.me.profile.names.post(request_body = request_body)


```