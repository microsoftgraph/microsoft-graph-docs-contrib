---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AcceptPostRequestBody(
	comment = "comment-value",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').accept.post(body = request_body)


```