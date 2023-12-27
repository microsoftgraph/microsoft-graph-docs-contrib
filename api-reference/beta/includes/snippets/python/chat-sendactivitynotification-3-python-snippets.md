---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendActivityNotificationPostRequestBody(
	topic = TeamworkActivityTopic(
		source = TeamworkActivityTopicSource.Text,
		value = "Deployment Approvals Channel",
		web_url = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000",
	),
	activity_type = "deploymentApprovalRequired",
	preview_text = ItemBody(
		content = "New deployment requires your approval",
	),
	recipient = AadUserNotificationRecipient(
		odata_type = "microsoft.graph.aadUserNotificationRecipient",
		user_id = "569363e2-4e49-4661-87f2-16f245c5d66a",
	),
	template_parameters = [
		KeyValuePair(
			name = "deploymentId",
			value = "6788662",
		),
	],
)

await graph_client.chats.by_chat_id('chat-id').send_activity_notification.post(request_body)


```