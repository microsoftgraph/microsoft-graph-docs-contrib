---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = MarkAsJunkPostRequestBody(
	move_to_junk = True,
)

result = await graph_client.me.messages.by_message_id('message-id').mark_as_junk.post(request_body)


```