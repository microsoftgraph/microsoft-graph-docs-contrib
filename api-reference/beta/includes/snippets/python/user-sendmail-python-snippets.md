---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.send_mail.send_mail_post_request_body import SendMailPostRequestBody
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SendMailPostRequestBody(
	message = Message(
		subject = "Meet for lunch?",
		body = ItemBody(
			content_type = BodyType.Text,
			content = "The new cafeteria is open.",
		),
		to_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "samanthab@contoso.com",
				),
			),
		],
		cc_recipients = [
			Recipient(
				email_address = EmailAddress(
					address = "danas@contoso.com",
				),
			),
		],
	),
	save_to_sent_items = False,
)

await graph_client.me.send_mail.post(request_body)


```