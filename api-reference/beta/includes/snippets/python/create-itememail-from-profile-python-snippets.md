---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemEmail()
request_body.address = 'Innocenty.Popov@adventureworks.com'




result = await client.me.profile.emails.post(request_body = request_body)


```