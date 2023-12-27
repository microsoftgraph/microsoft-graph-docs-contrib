---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateReplyPostRequestBody(
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
	comment = "Samantha, Randi, would you name the group if the project is approved, please?",
)

result = await graph_client.me.messages.by_message_id('message-id').create_reply.post(request_body)


```