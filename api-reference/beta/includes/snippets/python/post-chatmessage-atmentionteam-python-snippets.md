---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>",
	),
	mentions = [
		ChatMessageMention(
			id = 0,
			mention_text = "GraphTesting",
			mentioned = ChatMessageMentionedIdentitySet(
				conversation = TeamworkConversationIdentity(
					id = "68a3e365-f7d9-4a56-b499-24332a9cc572",
					display_name = "GraphTesting",
					conversation_identity_type = TeamworkConversationIdentityType.Team,
				),
			),
		),
	],
	reactions = [
	],
	message_history = [
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```