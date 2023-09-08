---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.Text,
		value = "Weekly Virtual Social",
		web_url = "Teams webUrl",
	),
	preview_text = ItemBody(
		content = "It will be fun!",
	),
	activity_type = "eventCreated",
	recipient = ChatMembersNotificationRecipient(
		odata_type = "microsoft.graph.chatMembersNotificationRecipient",
		chat_id = "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2",
	),
)

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(body = request_body)


```