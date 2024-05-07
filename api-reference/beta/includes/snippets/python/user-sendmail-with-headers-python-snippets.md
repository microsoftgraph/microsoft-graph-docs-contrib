---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.send_mail.send_mail_post_request_body import SendMailPostRequestBody
from msgraph.generated.models.message import Message
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.internet_message_header import InternetMessageHeader

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendMailPostRequestBody(
	message = Message(
		subject = "9/9/2018: concert",
		body = ItemBody(
			content_type = BodyType.Html,
			content = "The group represents Nevada.",
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
				value = "Nevada",
			),
			InternetMessageHeader(
				name = "x-custom-header-group-id",
				value = "NV001",
			),
		],
	),
)

await graph_client.me.send_mail.post(request_body)


```