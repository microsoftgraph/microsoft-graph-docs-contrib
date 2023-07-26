---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForwardPostRequestBody()
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'danas@contoso.onmicrosoft.com'

to_recipients_recipient1email_address.name = 'Dana Swope'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
request_body.torecipients(toRecipientsArray)


request_body.comment = 'Dana, hope you can make this meeting.'




await client.me.events.by_event_id('event-id').forward.post(request_body = request_body)


```