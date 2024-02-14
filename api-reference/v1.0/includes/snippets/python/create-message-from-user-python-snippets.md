---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	subject = "Did you see last night's game?",
	importance = Importance.Low,
	body = ItemBody(
		content_type = BodyType.Html,
		content = "They were <b>awesome</b>!",
	),
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "AdeleV@contoso.com",
			),
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```