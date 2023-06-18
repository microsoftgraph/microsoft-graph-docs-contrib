---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateReplyAllPostRequestBody()
message = Message()
attachments_attachment1 = Attachment()
attachments_attachment1.@odata_type = '#microsoft.graph.fileAttachment'

attachments_attachment1.name = 'guidelines.txt'

additional_data = [
'content_bytes' => 'bWFjIGFuZCBjaGVlc2UgdG9kYXk=', 
];
attachments_attachment1.additional_data(additional_data)



attachmentsArray []= attachmentsAttachment1;
message.attachments(attachmentsArray)



request_body.message = message
request_body.comment = 'if the project gets approved, please take a look at the attached guidelines before you decide on the name.'




result = await client.me.messages.by_message_id('message-id').create_reply_all.post(request_body = request_body)


```