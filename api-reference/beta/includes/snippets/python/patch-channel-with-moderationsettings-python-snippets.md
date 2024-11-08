---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.channel import Channel
from msgraph_beta.generated.models.channel_moderation_settings import ChannelModerationSettings
from msgraph_beta.generated.models.user_new_message_restriction import UserNewMessageRestriction
from msgraph_beta.generated.models.reply_restriction import ReplyRestriction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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