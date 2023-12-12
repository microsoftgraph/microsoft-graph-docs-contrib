---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.EntityUrl,
		value = "https://graph.microsoft.com/v1.0/chats/{chatId}",
	),
	activity_type = "taskCreated",
	preview_text = ItemBody(
		content = "New Task Created",
	),
	recipient = AadUserNotificationRecipient(
		odata_type = "microsoft.graph.aadUserNotificationRecipient",
		user_id = "569363e2-4e49-4661-87f2-16f245c5d66a",
	),
	template_parameters = [
		KeyValuePair(
			name = "taskId",
			value = "12322",
		),
	],
)

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body)


```