---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.update_recording_status.update_recording_status_post_request_body import UpdateRecordingStatusPostRequestBody
from msgraph_beta.generated.models.recording_status import RecordingStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateRecordingStatusPostRequestBody(
	client_context = "clientContext-value",
	status = RecordingStatus.NotRecording | RecordingStatus.Recording | RecordingStatus.Failed,
)

result = await graph_client.communications.calls.by_call_id('call-id').update_recording_status.post(request_body)


```