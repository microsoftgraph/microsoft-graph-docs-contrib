---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AadUserConversationMember(
	odata_type = "#microsoft.graph.aadUserConversationMember",
	visible_history_start_date_time = "0001-01-01T00:00:00Z",
	roles = [
		"owner",
	],
	additional_data = {
			"user@odata_bind" : "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5",
	}
)

result = await graph_client.chats.by_chat_id('chat-id').members.post(request_body)


```