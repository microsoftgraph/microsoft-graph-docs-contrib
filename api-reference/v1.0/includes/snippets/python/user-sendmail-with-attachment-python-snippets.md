---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
					address = "meganb@contoso.onmicrosoft.com",
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