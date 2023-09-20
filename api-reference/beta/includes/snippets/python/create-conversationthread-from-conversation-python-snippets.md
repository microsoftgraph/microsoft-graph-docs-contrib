---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ConversationThread(
	topic = "Take your wellness days and rest",
	posts = [
		Post(
			body = ItemBody(
				content_type = BodyType.Html,
				content = "Waiting for the summer holidays.",
			),
		),
	]
)

result = await graph_client.groups.by_group_id('group-id').conversations.by_conversation_id('conversation-id').threads.post(body = request_body)


```