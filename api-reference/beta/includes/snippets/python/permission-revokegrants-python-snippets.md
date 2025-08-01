---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.permissions.item.revoke_grants.revoke_grants_post_request_body import RevokeGrantsPostRequestBody
from msgraph_beta.generated.models.drive_recipient import DriveRecipient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RevokeGrantsPostRequestBody(
	grantees = [
		DriveRecipient(
			email = "ryan@contoso.com",
		),
	],
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').permissions.by_permission_id('permission-id').revoke_grants.post(request_body)


```