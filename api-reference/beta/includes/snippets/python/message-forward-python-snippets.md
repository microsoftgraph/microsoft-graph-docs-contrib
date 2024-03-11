---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.forward_post_request_body import ForwardPostRequestBody
from msgraph.generated.models.message import Message
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardPostRequestBody(
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
	comment = "Dana, just want to make sure you get this.",
)

await graph_client.me.messages.by_message_id('message-id').forward.post(request_body)


```