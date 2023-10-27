---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.Text,
		value = "Weekly Virtual Social",
		web_url = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000",
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

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body)


```