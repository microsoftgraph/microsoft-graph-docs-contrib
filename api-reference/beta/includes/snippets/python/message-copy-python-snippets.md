---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyPostRequestBody(
	destination_id = "destinationId-value",
)

result = await graph_client.me.messages.by_message_id('message-id').copy.post(request_body)


```