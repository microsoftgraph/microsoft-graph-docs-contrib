---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.events.item.accept.accept_post_request_body import AcceptPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AcceptPostRequestBody(
	comment = "comment-value",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').accept.post(request_body)


```