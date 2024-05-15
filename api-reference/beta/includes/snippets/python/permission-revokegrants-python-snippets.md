---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.permissions.item.revoke_grants.revoke_grants_post_request_body import RevokeGrantsPostRequestBody
from msgraph.generated.models.drive_recipient import DriveRecipient

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