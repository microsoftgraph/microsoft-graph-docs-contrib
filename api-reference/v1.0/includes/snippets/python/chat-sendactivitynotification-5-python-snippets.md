---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/v1.0/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2",
	),
	activity_type = "taskCreated",
	preview_text = ItemBody(
		content = "New Task Created",
	),
	recipient = ChatMembersNotificationRecipient(
		odata_type = "microsoft.graph.chatMembersNotificationRecipient",
		chat_id = "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2",
	),
	template_parameters = [
		KeyValuePair(
			name = "taskId",
			value = "Task 12322",
		),
	],
)

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body)


```