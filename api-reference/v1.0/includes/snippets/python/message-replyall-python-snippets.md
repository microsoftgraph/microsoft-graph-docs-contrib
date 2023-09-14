---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ReplyAllPostRequestBody(
	comment = "comment-value",
)

await graph_client.me.messages.by_message_id('message-id').reply_all.post(body = request_body)


```