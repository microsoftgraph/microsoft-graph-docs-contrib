---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.messages.item.create_reply.create_reply_post_request_body import CreateReplyPostRequestBody
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateReplyPostRequestBody(
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
	comment = "Samantha, Randi, would you name the group if the project is approved, please?",
)

result = await graph_client.me.messages.by_message_id('message-id').create_reply.post(request_body)


```