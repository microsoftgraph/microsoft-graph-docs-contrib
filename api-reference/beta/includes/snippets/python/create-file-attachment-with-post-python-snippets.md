---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReplyPostRequestBody()
post = Post()
postbody = ItemBody()
postbody.contenttype(BodyType.Text('bodytype.text'))

postbody.content = 'Which quarter does that file cover? See my attachment.'


post.body = postbody
attachments_attachment1 = FileAttachment()
attachments_attachment1.@odata_type = '#microsoft.graph.fileAttachment'

attachments_attachment1.name = 'Another file as attachment'

attachments_attachment1.ContentBytes(base64_decode('VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu'))


attachmentsArray []= attachmentsAttachment1;
post.attachments(attachmentsArray)



request_body.post = post



await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').reply.post(request_body = request_body)


```