---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = MarkUnreadPostRequestBody(
	message_ids = [
		"MC172851",
		"MC167983",
	],
)

result = await graph_client.admin.service_announcement.messages.mark_unread.post(request_body)


```