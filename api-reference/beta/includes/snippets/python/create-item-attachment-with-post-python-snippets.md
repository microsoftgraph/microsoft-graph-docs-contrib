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

postbody.content = 'I attached an event.'


post.body = postbody
attachments_attachment1 = ItemAttachment()
attachments_attachment1.@odata_type = '#microsoft.graph.itemAttachment'

attachments_attachment1.name = 'Holiday event'

attachments_attachment1item = Event()
attachments_attachment1item.@odata_type = 'microsoft.graph.event'

attachments_attachment1item.subject = 'Discuss gifts for children'

attachments_attachment1itembody = ItemBody()
attachments_attachment1itembody.contenttype(BodyType.HTML('bodytype.html'))

attachments_attachment1itembody.content = 'Let\'s look for funding!'


attachments_attachment1item.body = attachments_attachment1itembody
attachments_attachment1itemstart = DateTimeTimeZone()
attachments_attachment1itemstart.date_time = '2019-12-02T18:00:00'

attachments_attachment1itemstart.time_zone = 'Pacific Standard Time'


attachments_attachment1item.start = attachments_attachment1itemstart
attachments_attachment1itemend = DateTimeTimeZone()
attachments_attachment1itemend.date_time = '2019-12-02T19:00:00'

attachments_attachment1itemend.time_zone = 'Pacific Standard Time'


attachments_attachment1item.end = attachments_attachment1itemend

attachments_attachment1.item = attachments_attachment1item

attachmentsArray []= attachmentsAttachment1;
post.attachments(attachmentsArray)



request_body.post = post



await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').reply.post(request_body = request_body)


```