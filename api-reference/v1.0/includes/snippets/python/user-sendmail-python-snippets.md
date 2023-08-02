---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendMailPostRequestBody()
message = Message()
message.subject = 'Meet for lunch?'

messagebody = ItemBody()
messagebody.contenttype(BodyType.Text('bodytype.text'))

messagebody.content = 'The new cafeteria is open.'


message.body = messagebody
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'frannis@contoso.onmicrosoft.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
message.torecipients(toRecipientsArray)


cc_recipients_recipient1 = Recipient()
cc_recipients_recipient1email_address = EmailAddress()
cc_recipients_recipient1email_address.address = 'danas@contoso.onmicrosoft.com'


cc_recipients_recipient1.email_address = cc_recipients_recipient1email_address

ccRecipientsArray []= ccRecipientsRecipient1;
message.ccrecipients(ccRecipientsArray)



request_body.message = message
request_body.save_to_sent_items = False




await client.me.send_mail.post(request_body = request_body)


```