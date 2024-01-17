---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	subject = "Party planning",
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				name = "Samantha Booth",
				address = "samanthab@contoso.onmicrosoft.com",
			),
		),
	],
	mentions = [
		Mention(
			mentioned = EmailAddress(
				name = "Dana Swope",
				address = "danas@contoso.onmicrosoft.com",
			),
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```