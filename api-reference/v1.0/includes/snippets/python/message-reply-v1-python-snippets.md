---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.reply.reply_post_request_body import ReplyPostRequestBody
from msgraph.generated.models.message import Message
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReplyPostRequestBody(
	message = Message(
		to_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "samanthab@contoso.com",
					name = "Samantha Booth",
				),
			),
			Recipient(
				email_address = EmailAddress(
					address = "randiw@contoso.com",
					name = "Randi Welch",
				),
			),
		],
	),
	comment = "Samantha, Randi, would you name the group please?",
)

await graph_client.me.messages.by_message_id('message-id').reply.post(request_body)


```