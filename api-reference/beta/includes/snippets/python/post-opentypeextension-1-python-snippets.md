---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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