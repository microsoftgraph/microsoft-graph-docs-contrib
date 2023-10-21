---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = MarkAsNotJunkPostRequestBody(
	move_to_inbox = True,
)

result = await graph_client.me.messages.by_message_id('message-id').mark_a_not_junk.post(body = request_body)


```