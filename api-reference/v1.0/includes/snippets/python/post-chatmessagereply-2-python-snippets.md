---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.chat_message import ChatMessage
from msgraph.generated.models.chat_message_from_identity_set import ChatMessageFromIdentitySet
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ChatMessage(
	created_date_time = "2019-02-04T19:58:15.511Z",
	from = ChatMessageFromIdentitySet(
		user = Identity(
			id = "8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca",
			display_name = "John Doe",
		),
	),
	body = ItemBody(
		content_type = BodyType.Html,
		content = "Hello World",
	),
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_chat_message_id('chatMessage-id').replies.post(request_body)


```