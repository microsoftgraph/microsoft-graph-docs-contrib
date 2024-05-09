---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.update_recording_status.update_recording_status_post_request_body import UpdateRecordingStatusPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateRecordingStatusPostRequestBody(
	client_context = "clientContext-value",
	status = RecordingStatus.NotRecording | RecordingStatus.Recording | RecordingStatus.Failed,
)

result = await graph_client.communications.calls.by_call_id('call-id').update_recording_status.post(request_body)


```