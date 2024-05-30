---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.subscribe_to_tone.subscribe_to_tone_post_request_body import SubscribeToTonePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SubscribeToTonePostRequestBody(
	client_context = "fd1c7836-4d84-4e24-b6aa-23188688cc54",
)

result = await graph_client.communications.calls.by_call_id('call-id').subscribe_to_tone.post(request_body)


```