---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.forward.forward_post_request_body import ForwardPostRequestBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardPostRequestBody(
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "danas@contoso.com",
				name = "Dana Swope",
			),
		),
	],
	comment = "Dana, hope you can make this meeting.",
)

await graph_client.me.events.by_event_id('event-id').forward.post(request_body)


```