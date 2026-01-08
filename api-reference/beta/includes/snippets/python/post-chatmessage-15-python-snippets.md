---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.chat_message import ChatMessage
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.chat_message_attachment import ChatMessageAttachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ChatMessage(
	body = ItemBody(
		content_type = BodyType.Html,
		content = "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>",
	),
	attachments = [
		ChatMessageAttachment(
			id = "74d20c7f34aa4a7fb74e2b30004247c5",
			content_type = "application/vnd.microsoft.card.fluidEmbedCard",
			content = "{\"componentUrl\": \"{LoopComponent_url}\", \"sourceType\": \"Compose\"}",
			name = None,
			thumbnail_url = None,
			teams_app_id = "FluidEmbedCard",
		),
	],
)

result = await graph_client.chats.by_chat_id('chat-id').messages.post(request_body)


```