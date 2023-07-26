---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemPhone()
request_body.display_name = 'Car Phone'

request_body.number = '+7 499 342 22 13'




result = await client.me.profile.phones.post(request_body = request_body)


```