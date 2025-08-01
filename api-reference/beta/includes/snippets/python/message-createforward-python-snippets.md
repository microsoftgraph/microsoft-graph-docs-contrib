---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.messages.item.create_forward.create_forward_post_request_body import CreateForwardPostRequestBody
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateForwardPostRequestBody(
	message = Message(
		is_delivery_receipt_requested = True,
		to_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "danas@contoso.com",
					name = "Dana Swope",
				),
			),
		],
	),
	comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.",
)

result = await graph_client.me.messages.by_message_id('message-id').create_forward.post(request_body)


```