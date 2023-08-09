---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GrantPostRequestBody()
recipients_drive_recipient1 = DriveRecipient()
recipients_drive_recipient1.email = 'john@contoso.com'


recipientsArray []= recipientsDriveRecipient1;
recipients_drive_recipient2 = DriveRecipient()
recipients_drive_recipient2.email = 'ryan@external.com'


recipientsArray []= recipientsDriveRecipient2;
request_body.recipients(recipientsArray)


request_body.Roles(['read', ])




result = await client.shares.by_share_id('sharedDriveItem-id').permission.grant.post(request_body = request_body)


```