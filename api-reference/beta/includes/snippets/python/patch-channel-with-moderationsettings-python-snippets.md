---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Channel(
	display_name = "UpdateChannelModeration",
	description = "Update channel moderation.",
	moderation_settings = ChannelModerationSettings(
		user_new_message_restriction = UserNewMessageRestriction.Moderators,
		reply_restriction = ReplyRestriction.Everyone,
		allow_new_message_from_bots = True,
		allow_new_message_from_connectors = True,
	),
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').patch(request_body)


```