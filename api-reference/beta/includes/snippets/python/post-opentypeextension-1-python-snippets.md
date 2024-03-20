---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.message import Message
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.extension import Extension
from msgraph.generated.models.open_type_extension import OpenTypeExtension

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	subject = "Annual review",
	body = ItemBody(
		content_type = BodyType.Html,
		content = "You should be proud!",
	),
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				address = "rufus@contoso.com",
			),
		),
	],
	extensions = [
		OpenTypeExtension(
			odata_type = "microsoft.graph.openTypeExtension",
			extension_name = "Com.Contoso.Referral",
			additional_data = {
					"company_name" : "Wingtip Toys",
					"expiration_date" : "2015-12-30T11:00:00.000Z",
					"deal_value" : 10000,
			}
		),
	],
)

result = await graph_client.me.messages.post(request_body)


```