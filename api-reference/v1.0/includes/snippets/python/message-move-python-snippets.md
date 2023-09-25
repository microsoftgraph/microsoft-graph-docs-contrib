---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = MovePostRequestBody(
	destination_id = "deleteditems",
)

result = await graph_client.me.messages.by_message_id('message-id').move.post(body = request_body)


```