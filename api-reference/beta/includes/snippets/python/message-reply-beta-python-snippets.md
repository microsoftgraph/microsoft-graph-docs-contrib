---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	message = Message(
		to_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "samanthab@contoso.onmicrosoft.com",
					name = "Samantha Booth",
				),
			),
			Recipient(
				email_address = EmailAddress(
					address = "randiw@contoso.onmicrosoft.com",
					name = "Randi Welch",
				),
			),
		],
	),
	comment = "Samantha, Randi, would you name the group please?",
)

await graph_client.me.messages.by_message_id('message-id').reply.post(request_body)


```