---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
					address = "AlexW@contoso.OnMicrosoft.com",
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