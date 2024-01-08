---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChatMessage(
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<div><div><at id=\"0\">TestTag</at>&nbsp;Testing Tags</div></div>",
	),
	mentions = [
		ChatMessageMention(
			id = 0,
			mention_text = "TestTag",
			mentioned = ChatMessageMentionedIdentitySet(
				tag = TeamworkTagIdentity(
					id = "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ==",
					display_name = "TestTag",
				),
			),
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body)


```