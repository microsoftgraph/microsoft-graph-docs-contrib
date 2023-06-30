---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonName()
request_body.nickname = 'Kesha'




result = await client.me.profile.names.by_name_id('personName-id').patch(request_body = request_body)


```