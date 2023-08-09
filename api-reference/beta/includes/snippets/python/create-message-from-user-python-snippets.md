---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Message()
request_body.subject = 'Did you see last night\'s game?'

request_body.importance(Importance.Low('importance.low'))

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'They were <b>awesome</b>!'


request_body.body = body
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'AdeleV@contoso.onmicrosoft.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
request_body.torecipients(toRecipientsArray)





result = await client.me.messages.post(request_body = request_body)


```