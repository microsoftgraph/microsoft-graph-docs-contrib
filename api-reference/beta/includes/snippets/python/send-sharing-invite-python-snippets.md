---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InvitePostRequestBody()
recipients_drive_recipient1 = DriveRecipient()
recipients_drive_recipient1.email = 'robin@contoso.org'


recipientsArray []= recipientsDriveRecipient1;
request_body.recipients(recipientsArray)


request_body.message = 'Here\'s the file that we\'re collaborating on.'

request_body.require_sign_in = True

request_body.send_invitation = True

request_body.Roles(['write', ])

request_body.password = 'password123'

request_body.expiration_date_time = '2018-07-15T14:00:00.000Z'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').invite.post(request_body = request_body)


```