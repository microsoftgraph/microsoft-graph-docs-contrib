---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForwardPostRequestBody()
message = Message()
message.is_delivery_receipt_requested = True

to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'danas@contoso.onmicrosoft.com'

to_recipients_recipient1email_address.name = 'Dana Swope'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
message.torecipients(toRecipientsArray)



request_body.message = message
request_body.comment = 'Dana, just want to make sure you get this.'




await client.me.messages.by_message_id('message-id').forward.post(request_body = request_body)


```