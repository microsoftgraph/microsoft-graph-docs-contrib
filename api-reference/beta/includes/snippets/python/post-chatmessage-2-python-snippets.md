---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Hello World <at id=\"0\">Jane Smith</at>",
	),
	mentions = [
		ChatMessageMention(
			id = 0,
			mention_text = "Jane Smith",
			mentioned = ChatMessageMentionedIdentitySet(
				user = Identity(
					display_name = "Jane Smith",
					id = "ef1c916a-3135-4417-ba27-8eb7bd084193",
					additional_data = {
							"user_identity_type" : "aadUser",
					}
				),
			),
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```