---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.send_mail.send_mail_post_request_body import SendMailPostRequestBody
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
from msgraph_beta.generated.models.mention import Mention
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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