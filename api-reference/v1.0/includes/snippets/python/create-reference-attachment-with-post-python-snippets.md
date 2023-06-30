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

postbody.content = 'I attached a reference to a file on OneDrive.'


post.body = postbody
attachments_attachment1 = ReferenceAttachment()
attachments_attachment1.@odata_type = '#microsoft.graph.referenceAttachment'

attachments_attachment1.name = 'Personal pictures'

additional_data = [
'source_url' => 'https://contoso.com/personal/mario_contoso_net/Documents/Pics', 
'provider_type' => 'oneDriveConsumer', 
'permission' => 'Edit', 
'is_folder' => 'True', 
];
attachments_attachment1.additional_data(additional_data)



attachmentsArray []= attachmentsAttachment1;
post.attachments(attachmentsArray)



request_body.post = post



await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').reply.post(request_body = request_body)


```