---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MarkReadPostRequestBody()
request_body.MessageIds(['MC172851', 'MC167983', ])




result = await client.admin.service_announcement.messages.mark_read.post(request_body = request_body)


```