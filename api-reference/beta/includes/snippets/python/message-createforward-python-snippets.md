---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateForwardPostRequestBody(
	message = Message(
		is_delivery_receipt_requested = True,
		to_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "danas@contoso.onmicrosoft.com",
					name = "Dana Swope",
				),
			),
		],
	),
	comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.",
)

result = await graph_client.me.messages.by_message_id('message-id').create_forward.post(request_body)


```