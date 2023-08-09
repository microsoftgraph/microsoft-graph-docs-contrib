---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SubscribeToTonePostRequestBody()
request_body.client_context = 'fd1c7836-4d84-4e24-b6aa-23188688cc54'




result = await client.communications.calls.by_call_id('call-id').subscribe_to_tone.post(request_body = request_body)


```