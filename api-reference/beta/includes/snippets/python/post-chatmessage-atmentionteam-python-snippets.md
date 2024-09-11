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
from msgraph_beta.generated.models.chat_message_reaction import ChatMessageReaction
from msgraph_beta.generated.models.chat_message_history_item import ChatMessageHistoryItem
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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