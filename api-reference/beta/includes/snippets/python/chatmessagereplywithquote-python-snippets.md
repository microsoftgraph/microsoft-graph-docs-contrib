---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.chats.item.messages.reply_with_quote.reply_with_quote_post_request_body import ReplyWithQuotePostRequestBody
from msgraph_beta.generated.models.chat_message import ChatMessage
from msgraph_beta.generated.models.item_body import ItemBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReplyWithQuotePostRequestBody(
	message_ids = [
		"1728088338580",
	],
	reply_message = ChatMessage(
		body = ItemBody(
			content = "Hello World",
		),
	),
)

result = await graph_client.chats.by_chat_id('chat-id').messages.reply_with_quote.post(request_body)


```