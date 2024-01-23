---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "content-value",
		),
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').reply.post(request_body)


```