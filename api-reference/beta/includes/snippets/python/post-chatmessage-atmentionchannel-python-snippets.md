---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>",
	),
	mentions = [
		ChatMessageMention(
			id = 0,
			mention_text = "General",
			mentioned = ChatMessageMentionedIdentitySet(
				conversation = TeamworkConversationIdentity(
					id = "19:0b50940236084d258c97b21bd01917b0@thread.skype",
					display_name = "General",
					conversation_identity_type = TeamworkConversationIdentityType.Channel,
				),
			),
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```