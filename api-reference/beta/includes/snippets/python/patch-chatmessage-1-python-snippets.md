---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	message_type = ChatMessageType.Message,
	subject = None,
	summary = None,
	importance = ChatMessageImportance.Normal,
	locale = "en-us",
	from = ChatMessageFromIdentitySet(
		application = None,
		device = None,
		user = Identity(
			id = "3b102402-813e-4e17-a6b2-f841aef1fdfc",
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
		content_type = BodyType.Text,
		content = "Edit text only",
	),
	attachments = [
	],
	mentions = [
	],
	reactions = [
	],
	message_history = [
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_chat_message_id('chatMessage-id').patch(request_body)


```