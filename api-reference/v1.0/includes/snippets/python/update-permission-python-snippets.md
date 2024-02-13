---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.permission import Permission

graph_client = GraphServiceClient(credentials, scopes)

request_body = Permission(
	roles = [
		"read",
	],
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').permissions.by_permission_id('permission-id').patch(request_body)


```