---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SendMailPostRequestBody()
message = Message()
message.subject = '9/9/2018: concert'

messagebody = ItemBody()
messagebody.contenttype(BodyType.HTML('bodytype.html'))

messagebody.content = 'The group represents Nevada.'


message.body = messagebody
to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.address = 'AlexW@contoso.OnMicrosoft.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
message.torecipients(toRecipientsArray)


internet_message_headers_internet_message_header1 = InternetMessageHeader()
internet_message_headers_internet_message_header1.name = 'x-custom-header-group-name'

internet_message_headers_internet_message_header1.value = 'Nevada'


internetMessageHeadersArray []= internetMessageHeadersInternetMessageHeader1;
internet_message_headers_internet_message_header2 = InternetMessageHeader()
internet_message_headers_internet_message_header2.name = 'x-custom-header-group-id'

internet_message_headers_internet_message_header2.value = 'NV001'


internetMessageHeadersArray []= internetMessageHeadersInternetMessageHeader2;
message.internetmessageheaders(internetMessageHeadersArray)



request_body.message = message



await client.me.send_mail.post(request_body = request_body)


```