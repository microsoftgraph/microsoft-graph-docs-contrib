---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonInterest()
request_body.Categories(['Sports', ])

request_body.description = 'World\'s greatest football club'

request_body.display_name = 'Chelsea FC'

request_body.web_url = 'https://www.chelseafc.com'




result = await client.me.profile.interests.post(request_body = request_body)


```