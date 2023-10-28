---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
				address = "AlexW@contoso.OnMicrosoft.com",
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