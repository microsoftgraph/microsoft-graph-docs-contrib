---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.send_mail_post_request_body import SendMailPostRequestBody
from msgraph.generated.models.message import Message
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.mention import Mention

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendMailPostRequestBody(
	message = Message(
		subject = "Project kickoff",
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
	),
)

await graph_client.me.send_mail.post(request_body)


```