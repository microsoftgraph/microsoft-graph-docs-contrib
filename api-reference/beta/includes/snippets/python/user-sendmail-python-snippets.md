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
					address = "samanthab@contoso.onmicrosoft.com",
				),
			),
		],
		cc_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "danas@contoso.onmicrosoft.com",
				),
			),
		],
	),
	save_to_sent_items = False,
)

await graph_client.me.send_mail.post(request_body)


```