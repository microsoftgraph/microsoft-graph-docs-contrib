---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendMailPostRequestBody()
message = Message()
message.subject = 'Project kickoff'

to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.name = 'Samantha Booth'

to_recipients_recipient1email_address.address = 'samanthab@contoso.onmicrosoft.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
message.torecipients(toRecipientsArray)


mentions_mention1 = Mention()
mentions_mention1mentioned = EmailAddress()
mentions_mention1mentioned.name = 'Dana Swope'

mentions_mention1mentioned.address = 'danas@contoso.onmicrosoft.com'


mentions_mention1.mentioned = mentions_mention1mentioned

mentionsArray []= mentionsMention1;
message.mentions(mentionsArray)



request_body.message = message



await client.me.send_mail.post(request_body = request_body)


```