---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.participants.item.stop_hold_music.stop_hold_music_post_request_body import StopHoldMusicPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = StopHoldMusicPostRequestBody(
	client_context = "d45324c1-fcb5-430a-902c-f20af696537c",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').stop_hold_music.post(request_body)


```