---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateRecordingStatusPostRequestBody(
	client_context = "clientContext-value",
	status = RecordingStatus.NotRecording | RecordingStatus.Recording | RecordingStatus.Failed,
)

result = await graph_client.communications.calls.by_call_id('call-id').update_recording_status.post(request_body)


```