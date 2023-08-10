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
to_recipients_recipient1email_address.address = 'meganb@contoso.onmicrosoft.com'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
message.torecipients(toRecipientsArray)


attachments_attachment1 = FileAttachment()
attachments_attachment1.@odata_type = '#microsoft.graph.fileAttachment'

attachments_attachment1.name = 'attachment.txt'

attachments_attachment1.content_type = 'text/plain'

attachments_attachment1.ContentBytes(base64_decode('SGVsbG8gV29ybGQh'))


attachmentsArray []= attachmentsAttachment1;
message.attachments(attachmentsArray)



request_body.message = message



await client.me.send_mail.post(request_body = request_body)


```