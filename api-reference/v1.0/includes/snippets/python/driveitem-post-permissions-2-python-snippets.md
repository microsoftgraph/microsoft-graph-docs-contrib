---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.permission import Permission
from msgraph.generated.models.share_point_identity_set import SharePointIdentitySet
from msgraph.generated.models.share_point_identity import SharePointIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Permission(
	granted_to_v2 = SharePointIdentitySet(
		site_group = SharePointIdentity(
			id = "10",
			display_name = "Internal Collaborators",
		),
	),
	roles = [
		"write",
	],
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').permissions.post(request_body)


```