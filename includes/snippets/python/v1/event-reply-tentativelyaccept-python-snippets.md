---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TentativelyAcceptPostRequestBody(
	comment = "I will probably be able to make it.",
	send_response = True,
)

await graph_client.me.events.by_event_id('event-id').tentatively_accept.post(request_body)


```