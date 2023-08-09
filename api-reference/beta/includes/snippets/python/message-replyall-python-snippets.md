---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReplyAllPostRequestBody()
message = Message()
attachments_attachment1 = FileAttachment()
attachments_attachment1.@odata_type = '#microsoft.graph.fileAttachment'

attachments_attachment1.name = 'guidelines.txt'

attachments_attachment1.ContentBytes(base64_decode('bWFjIGFuZCBjaGVlc2UgdG9kYXk='))


attachmentsArray []= attachmentsAttachment1;
message.attachments(attachmentsArray)



request_body.message = message
request_body.comment = 'Please take a look at the attached guidelines before you decide on the name.'




await client.me.messages.by_message_id('message-id').reply_all.post(request_body = request_body)


```