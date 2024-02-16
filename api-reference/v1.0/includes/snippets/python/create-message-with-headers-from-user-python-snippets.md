---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.internet_message_header import InternetMessageHeader

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	subject = "9/8/2018: concert",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "The group represents Washington.",
	),
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "AlexW@contoso.com",
			),
		),
	],
	internet_message_headers = [
		InternetMessageHeader(
			name = "x-custom-header-group-name",
			value = "Washington",
		),
		InternetMessageHeader(
			name = "x-custom-header-group-id",
			value = "WA001",
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```