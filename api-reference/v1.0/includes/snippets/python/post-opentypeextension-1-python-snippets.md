---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Message()
request_body.subject = 'Annual review'

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'You should be proud!'


request_body.body = body
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'rufus@contoso.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
request_body.torecipients(toRecipientsArray)


extensions_extension1 = OpenTypeExtension()
extensions_extension1.@odata_type = 'microsoft.graph.openTypeExtension'

extensions_extension1.extension_name = 'Com.Contoso.Referral'

additional_data = [
'company_name' => 'Wingtip Toys', 
'expiration_date' => '2015-12-30T11:00:00.000Z', 
'deal_value' => 10000,
];
extensions_extension1.additional_data(additional_data)



extensionsArray []= extensionsExtension1;
request_body.extensions(extensionsArray)





result = await client.me.messages.post(request_body = request_body)


```