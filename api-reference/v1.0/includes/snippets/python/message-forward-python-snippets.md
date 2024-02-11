---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.forward_post_request_body import ForwardPostRequestBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardPostRequestBody(
	comment = "comment-value",
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				name = "name-value",
				address = "address-value",
			),
		),
	],
)

await graph_client.me.messages.by_message_id('message-id').forward.post(request_body)


```