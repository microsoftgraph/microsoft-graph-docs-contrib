---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyAllPostRequestBody(
	comment = "comment-value",
)

await graph_client.me.messages.by_message_id('message-id').reply_all.post(request_body)


```