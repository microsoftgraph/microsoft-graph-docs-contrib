---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.accept_post_request_body import AcceptPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AcceptPostRequestBody(
	comment = "comment-value",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').accept.post(request_body)


```