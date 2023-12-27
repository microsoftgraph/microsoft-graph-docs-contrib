---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = RevokeGrantsPostRequestBody(
	grantees = [
		DriveRecipient(
			email = "ryan@contoso.com",
		),
	],
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').permissions.by_permission_id('permission-id').revoke_grants.post(request_body)


```