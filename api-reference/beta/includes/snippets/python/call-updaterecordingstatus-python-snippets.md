---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateRecordingStatusPostRequestBody()
request_body.client_context = 'clientContext-value'

request_body.status(RecordingStatus.NotRecording | recording | failed('recordingstatus.notrecording | recording | failed'))




result = await client.communications.calls.by_call_id('call-id').update_recording_status.post(request_body = request_body)


```