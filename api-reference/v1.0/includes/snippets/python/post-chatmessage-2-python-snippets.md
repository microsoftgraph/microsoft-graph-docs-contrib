---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
from msgraph.generated.models.chat_message_mention import ChatMessageMention
from msgraph.generated.models.chat_message_mentioned_identity_set import ChatMessageMentionedIdentitySet
from msgraph.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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