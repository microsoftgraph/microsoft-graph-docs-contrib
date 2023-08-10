---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Store()
request_body.default_language_tag = 'en-US'




result = await client.term_store.patch(request_body = request_body)


```