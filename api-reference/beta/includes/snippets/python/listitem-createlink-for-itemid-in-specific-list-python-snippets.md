---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateLinkPostRequestBody()
request_body.type = 'view'

request_body.scope = 'anonymous'

request_body.password = 'String'

recipients_drive_recipient1 = DriveRecipient()
recipients_drive_recipient1.@odata_type = 'microsoft.graph.driveRecipient'


recipientsArray []= recipientsDriveRecipient1;
request_body.recipients(recipientsArray)


request_body.send_notification = True

request_body.retain_inherited_permissions = False




result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_item_id('listItem-id').create_link.post(request_body = request_body)


```