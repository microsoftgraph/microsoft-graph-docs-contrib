---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonWebsite()
request_body.description = 'Lyn Damer play in the Women\'s 1st Division (Toppserien) in Norway'




result = await client.me.profile.websites.by_website_id('personWebsite-id').patch(request_body = request_body)


```