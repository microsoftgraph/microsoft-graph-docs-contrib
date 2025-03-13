---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress
from msgraph_beta.generated.models.internet_message_header import InternetMessageHeader
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Message(
	subject = "9/8/2018: concert",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "The group represents Washington.",
	),
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "AlexW@contoso.com",
			),
		),
	],
	internet_message_headers = [
		InternetMessageHeader(
			name = "x-custom-header-group-name",
			value = "Washington",
		),
		InternetMessageHeader(
			name = "x-custom-header-group-id",
			value = "WA001",
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```