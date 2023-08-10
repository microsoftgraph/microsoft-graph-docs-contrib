---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReplyPostRequestBody()
message = Message()
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'samanthab@contoso.onmicrosoft.com'

to_recipients_recipient1email_address.name = 'Samantha Booth'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
to_recipients_recipient2 = Recipient()
to_recipients_recipient2email_address = EmailAddress()
to_recipients_recipient2email_address.address = 'randiw@contoso.onmicrosoft.com'

to_recipients_recipient2email_address.name = 'Randi Welch'


to_recipients_recipient2.email_address = to_recipients_recipient2email_address

toRecipientsArray []= toRecipientsRecipient2;
message.torecipients(toRecipientsArray)



request_body.message = message
request_body.comment = 'Samantha, Randi, would you name the group please?'




await client.me.messages.by_message_id('message-id').reply.post(request_body = request_body)


```