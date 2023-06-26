---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Channel()
request_body.display_name = 'UpdateChannelModeration'

request_body.description = 'Update channel moderation.'

moderation_settings = ChannelModerationSettings()
moderation_settings.usernewmessagerestriction(UserNewMessageRestriction.Moderators('usernewmessagerestriction.moderators'))

moderation_settings.replyrestriction(ReplyRestriction.Everyone('replyrestriction.everyone'))

moderation_settings.allow_new_message_from_bots = True

moderation_settings.allow_new_message_from_connectors = True


request_body.moderation_settings = moderation_settings



result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').patch(request_body = request_body)


```