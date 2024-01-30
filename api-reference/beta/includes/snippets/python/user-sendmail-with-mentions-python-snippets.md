---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SendMailPostRequestBody(
	message = Message(
		subject = "Project kickoff",
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
	),
)

await graph_client.me.send_mail.post(request_body)


```