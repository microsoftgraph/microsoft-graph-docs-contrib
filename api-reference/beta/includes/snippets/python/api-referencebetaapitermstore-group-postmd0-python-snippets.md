---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.display_name = 'myGroup'




result = await client.term_store.groups.post(request_body = request_body)


```