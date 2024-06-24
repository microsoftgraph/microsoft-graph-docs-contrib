---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.mute.mute_post_request_body import MutePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MutePostRequestBody(
	client_context = "clientContext-value",
)

result = await graph_client.communications.calls.by_call_id('call-id').mute.post(request_body)


```