---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.create_forward.create_forward_post_request_body import CreateForwardPostRequestBody
from msgraph.generated.models.message import Message
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

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