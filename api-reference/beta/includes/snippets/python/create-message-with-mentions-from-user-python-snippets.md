---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.mention import Mention

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	subject = "Party planning",
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				name = "Samantha Booth",
				address = "samanthab@contoso.com",
			),
		),
	],
	mentions = [
		Mention(
			mentioned = EmailAddress(
				name = "Dana Swope",
				address = "danas@contoso.com",
			),
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```