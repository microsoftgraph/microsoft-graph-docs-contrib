---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.channels.item.messages.forward_to_chat.forward_to_chat_post_request_body import ForwardToChatPostRequestBody
from msgraph_beta.generated.models.chat_message import ChatMessage
from msgraph_beta.generated.models.item_body import ItemBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ForwardToChatPostRequestBody(
	target_chat_ids = [
		"19:e2ed97baac8e4bffbb91299a38996790@thread.v2",
	],
	message_ids = [
		"1728088338580",
	],
	additional_message = ChatMessage(
		body = ItemBody(
			content = "Hello World",
		),
	),
)

result = await graph_client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.forward_to_chat.post(request_body)


```