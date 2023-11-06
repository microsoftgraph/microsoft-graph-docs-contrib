---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CancelPostRequestBody(
	comment = "Cancelling for this week due to all hands",
)

await graph_client.me.events.by_event_id('event-id').cancel.post(request_body)


```