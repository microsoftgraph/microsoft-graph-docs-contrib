---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CancelMediaProcessingPostRequestBody()
request_body.client_context = 'clientContext-value'




result = await client.communications.calls.by_call_id('call-id').cancel_media_processing.post(request_body = request_body)


```