---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RejectPostRequestBody()
request_body.reason(RejectReason.Busy('rejectreason.busy'))




await client.communications.calls.by_call_id('call-id').reject.post(request_body = request_body)


```