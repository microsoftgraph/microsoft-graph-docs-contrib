---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "Which quarter does that file cover? See my attachment.",
		),
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				name = "Another file as attachment",
				content_bytes = base64.urlsafe_b64decode("VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu"),
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').reply.post(request_body)


```