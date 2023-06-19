---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RevokeGrantsPostRequestBody()
grantees_drive_recipient1 = DriveRecipient()
grantees_drive_recipient1.email = 'ryan@contoso.com'


granteesArray []= granteesDriveRecipient1;
request_body.grantees(granteesArray)





result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').permissions.by_permission_id('permission-id').revoke_grants.post(request_body = request_body)


```