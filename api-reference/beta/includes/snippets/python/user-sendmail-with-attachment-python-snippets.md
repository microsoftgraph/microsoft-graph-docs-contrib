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
from msgraph.generated.models.attachment import Attachment
from msgraph.generated.models.file_attachment import FileAttachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendMailPostRequestBody(
	message = Message(
		subject = "Meet for lunch?",
		body = ItemBody(
			content_type = BodyType.Text,
			content = "The new cafeteria is open.",
		),
		to_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "meganb@contoso.com",
				),
			),
		],
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				name = "attachment.txt",
				content_type = "text/plain",
				content_bytes = base64.urlsafe_b64decode("SGVsbG8gV29ybGQh"),
			),
		],
	),
)

await graph_client.me.send_mail.post(request_body)


```