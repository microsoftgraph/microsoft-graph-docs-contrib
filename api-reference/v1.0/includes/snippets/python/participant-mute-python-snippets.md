---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mute_post_request_body import MutePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MutePostRequestBody(
	client_context = "d45324c1-fcb5-430a-902c-f20af696537c",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').mute.post(request_body)


```