---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Message()
request_body.subject = '9/8/2018: concert'

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'The group represents Washington.'


request_body.body = body
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'AlexW@contoso.OnMicrosoft.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
request_body.torecipients(toRecipientsArray)


internet_message_headers_internet_message_header1 = InternetMessageHeader()
internet_message_headers_internet_message_header1.name = 'x-custom-header-group-name'

internet_message_headers_internet_message_header1.value = 'Washington'


internetMessageHeadersArray []= internetMessageHeadersInternetMessageHeader1;
internet_message_headers_internet_message_header2 = InternetMessageHeader()
internet_message_headers_internet_message_header2.name = 'x-custom-header-group-id'

internet_message_headers_internet_message_header2.value = 'WA001'


internetMessageHeadersArray []= internetMessageHeadersInternetMessageHeader2;
request_body.internetmessageheaders(internetMessageHeadersArray)





result = await client.me.messages.post(request_body = request_body)


```