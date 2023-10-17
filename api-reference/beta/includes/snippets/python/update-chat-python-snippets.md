---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Chat(
	topic = "Group chat title update",
)

result = await graph_client.chats.by_chat_id('chat-id').patch(body = request_body)


```