---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceAttachment()
request_body.@odata_type = '#microsoft.graph.referenceAttachment'

request_body.name = 'Personal pictures'

request_body.source_url = 'https://contoso.com/personal/mario_contoso_net/Documents/Pics'

request_body.providertype(ReferenceAttachmentProvider.OneDriveConsumer('referenceattachmentprovider.onedriveconsumer'))

request_body.permission(ReferenceAttachmentPermission.Edit('referenceattachmentpermission.edit'))

request_body.is_folder = True




result = await client.me.messages.by_message_id('message-id').attachments.post(request_body = request_body)


```