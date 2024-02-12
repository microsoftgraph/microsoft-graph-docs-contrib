---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.drive_item import DriveItem
from msgraph.generated.models.item_reference import ItemReference

graph_client = GraphServiceClient(credentials, scopes)

request_body = DriveItem(
	parent_reference = ItemReference(
		id = "new-parent-folder-id",
	),
	name = "new-item-name.txt",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').patch(request_body)


```