---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AcceptPostRequestBody(
	comment = "comment-value",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').accept.post(request_body)


```