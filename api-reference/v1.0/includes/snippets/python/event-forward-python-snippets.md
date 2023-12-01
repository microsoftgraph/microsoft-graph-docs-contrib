---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardPostRequestBody(
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "danas@contoso.onmicrosoft.com",
				name = "Dana Swope",
			),
		),
	],
	comment = "Dana, hope you can make this meeting.",
)

await graph_client.me.events.by_event_id('event-id').forward.post(request_body)


```