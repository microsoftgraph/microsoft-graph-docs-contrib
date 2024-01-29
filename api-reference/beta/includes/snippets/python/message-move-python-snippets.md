---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = MovePostRequestBody(
	destination_id = "deleteditems",
)

result = await graph_client.me.messages.by_message_id('message-id').move.post(request_body)


```