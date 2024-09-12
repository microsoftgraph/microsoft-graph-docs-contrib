---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.chat_message import ChatMessage
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.chat_message_mention import ChatMessageMention
from msgraph_beta.generated.models.chat_message_mentioned_identity_set import ChatMessageMentionedIdentitySet
from msgraph_beta.generated.models.teamwork_conversation_identity import TeamworkConversationIdentity
from msgraph_beta.generated.models.teamwork_conversation_identity_type import TeamworkConversationIdentityType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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