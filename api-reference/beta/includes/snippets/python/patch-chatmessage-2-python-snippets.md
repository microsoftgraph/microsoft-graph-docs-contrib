---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	message_type = ChatMessageType.Message,
	deleted_date_time = None,
	subject = None,
	summary = None,
	importance = ChatMessageImportance.Normal,
	locale = "en-us",
	from = ChatMessageFromIdentitySet(
		application = None,
		device = None,
		user = Identity(
			id = "6b3f3c54-d09c-4fdd-b146-9b514a8a4f40",
			display_name = "Sumit Gupta",
			additional_data = {
					"user_identity_type" : "aadUser",
			}
		),
		additional_data = {
				"conversation" : None,
		}
	),
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH",
	),
	attachments = [
	],
	mentions = [
		ChatMessageMention(
			id = 0,
			mention_text = "Raghav",
			mentioned = ChatMessageMentionedIdentitySet(
				application = None,
				device = None,
				conversation = None,
				user = Identity(
					id = "f1b66449-b46d-49b0-9c3c-53c10234c818e",
					display_name = "Raghav Mankad",
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
		ChatMessageMention(
			id = 1,
			mention_text = "TestGlobalBot",
			mentioned = ChatMessageMentionedIdentitySet(
				application = Identity(
					id = "03a02232-d8f5-4970-a77e-6e8c76ce7a4e",
					display_name = "TestGlobalBot",
					additional_data = {
							"application_identity_type" : "bot",
					}
				),
				device = None,
				conversation = None,
				user = None,
			),
		),
	],
	reactions = [
	],
	message_history = [
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_chat_message_id('chatMessage-id').patch(request_body)


```