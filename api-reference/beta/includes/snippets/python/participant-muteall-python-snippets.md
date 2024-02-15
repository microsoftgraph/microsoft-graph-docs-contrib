---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mute_all_post_request_body import MuteAllPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MuteAllPostRequestBody(
	participants = [
		"",
	],
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.mute_all.post(request_body)


```