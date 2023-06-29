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

postbody.content = 'content-value'


post.body = postbody
post.receivedDateTime = DateTime('datetime-value')

post.has_attachments = True

postfrom = Recipient()
postfromemail_address = EmailAddress()
postfromemail_address.name = 'name-value'

postfromemail_address.address = 'address-value'


postfrom.email_address = postfromemail_address

post.from = postfrom
postsender = Recipient()
postsenderemail_address = EmailAddress()
postsenderemail_address.name = 'name-value'

postsenderemail_address.address = 'address-value'


postsender.email_address = postsenderemail_address

post.sender = postsender
post.conversation_thread_id = 'conversationThreadId-value'

new_participants_recipient1 = Recipient()
new_participants_recipient1email_address = EmailAddress()
new_participants_recipient1email_address.name = 'name-value'

new_participants_recipient1email_address.address = 'address-value'


new_participants_recipient1.email_address = new_participants_recipient1email_address

newParticipantsArray []= newParticipantsRecipient1;
post.newparticipants(newParticipantsArray)


post.conversation_id = 'conversationId-value'

post.createdDateTime = DateTime('datetime-value')

post.lastModifiedDateTime = DateTime('datetime-value')

post.change_key = 'changeKey-value'

post.Categories(['categories-value', ])

post.id = 'id-value'

postin_reply_to = Post()

post.in_reply_to = postin_reply_to
attachments_attachment1 = FileAttachment()
attachments_attachment1.@odata_type = '#microsoft.graph.fileAttachment'

attachments_attachment1.lastModifiedDateTime = DateTime('datetime-value')

attachments_attachment1.name = 'name-value'

attachments_attachment1.content_type = 'contentType-value'

attachments_attachment1.Size = 99

attachments_attachment1.is_inline = True

attachments_attachment1.id = 'id-value'


attachmentsArray []= attachmentsAttachment1;
post.attachments(attachmentsArray)



request_body.post = post



await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').posts.by_post_id('post-id').reply.post(request_body = request_body)


```