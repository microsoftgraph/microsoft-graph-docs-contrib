---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardPostRequestBody(
	comment = "comment-value",
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				name = "name-value",
				address = "address-value",
			),
		),
	],
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').posts.by_post_id('post-id').forward.post(request_body)


```