---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonWebsite()
request_body.Categories(['football', ])

request_body.display_name = 'Lyn Damer'

request_body.web_url = 'www.lyndamer.no'




result = await client.me.profile.websites.post(request_body = request_body)


```