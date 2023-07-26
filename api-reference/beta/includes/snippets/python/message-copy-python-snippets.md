---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyPostRequestBody()
request_body.destination_id = 'destinationId-value'




result = await client.me.messages.by_message_id('message-id').copy.post(request_body = request_body)


```