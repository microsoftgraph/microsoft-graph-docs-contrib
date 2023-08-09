---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Calendar()
request_body.name = 'Social events'




result = await client.me.calendar.patch(request_body = request_body)


```